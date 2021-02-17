function Get-LD_InstalledSoftware
    {
    [CmdletBinding()]
    Param
        (
        # Wildcard characters allowed - and recommended.
        [Parameter()]
        [string]
        $DisplayName = '*',

        # Wildcard characters allowed.
        [Parameter()]
        [string]
        $DisplayVersion = '*',

        # Use 'yyyyMMdd' format.
        [Parameter()]
        [string]
        $InstallDate = '*',

        # Wildcard characters allowed.
        [Parameter()]
        [string]
        $Publisher = '*',

        # Wildcard characters allowed, but normally this otta be left to the default.
        [Parameter()]
        [string]
        $UninstallString = '*'
        )

    # registry locations for installed software
    $Provider = 'Registry::'
    $All = 'HKEY_LOCAL_MACHINE\SOFTWARE'
    $Current = 'HKEY_CURRENT_USER\SOFTWARE'
    $64_32 = 'Microsoft\Windows\CurrentVersion\Uninstall\*'
    $32_on_64 = 'WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'

    $RPathAllUser = -join ($Provider, (Join-Path -Path $All -ChildPath $64_32))
    $RPathCurrentUser = -join ($Provider, (Join-Path -Path $Current -ChildPath $64_32))
    $RPathAllUser32 = -join ($Provider, (Join-Path -Path $All -ChildPath $32_on_64))
    $RPathCurrentUser32 = -join ($Provider, (Join-Path -Path $Current -ChildPath $32_on_64))

    # get all values from all 4 registry locations
    $Result = Get-ItemProperty -Path $RPathAllUser, $RPathCurrentUser, $RPathAllUser32, $RPathCurrentUser32 |
        # skip items without a DisplayName
        Where-Object DisplayName -ne $null |
        Where-Object {
            $_.DisplayName -like $DisplayName -and
            $_.DisplayVersion -like $DisplayVersion -and
            $_.InstallDate -like $InstallDate -and
            $_.Publisher -like $Publisher -and
            $_.UninstallString -like $UninstallString
            } |
        Sort-Object -Property DisplayName 

    $Result
    }

    Get-LD_InstalledSoftware -DisplayName *chrome*
    pause