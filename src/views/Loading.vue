<template>
  <div>
    <PcLoading />
  </div>
</template>

<script>
import PcLoading from "@/components/PcLoading.vue";

export default {
  name: "Loading",
  components: {
    PcLoading,
  },
  beforeMount() {
    this.$store.commit(
      "CGU_CHANGE",
      window.ipcRenderer
        .sendSync(
          "execute-powershell",
          (event,
          "get-wmiobject -class win32_VideoController | select-object -expand name")
        )
        .replace(/\s*$/, "")
    );
    this.$store.commit(
      "CPU_CHANGE",
      window.ipcRenderer
        .sendSync(
          "execute-powershell",
          (event,
          "get-wmiobject -class Win32_Processor | select-object -expand name")
        )
        .replace(/\s*$/, "")
    );
    this.$store.commit(
      "RAM_CHANGE",
      window.ipcRenderer
        .sendSync(
          "execute-powershell",
          (event,
          "get-wmiobject -class Win32_physicalmemory | select-object -expand PartNumber")
        )
        .replace(/\s*$/, "")
        .split("\n")[0]
    );
    this.$store.commit(
      "MOTHERBOARD_CHANGE",
      window.ipcRenderer
        .sendSync(
          "execute-powershell",
          (event,
          "get-wmiobject -class Win32_baseboard | select-object -expand Product")
        )
        .replace(/\s*$/, "")
    );
  },
};
</script>

<style scoped>
body {
  user-select: none;
  -webkit-user-drag: none;
  -webkit-user-select: none;
}
</style>