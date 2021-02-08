<template>
  <div>
    <p>Carte Graphique : {{ cg }}</p>
    <button @click="powershell"></button>
  </div>
</template>

<script>
export default {
  name: "PcLoading",
  data() {
    return {
      cg: String,
    };
  },
  mounted() {},
  methods: {
    powershell() {
      var command = "get-wmiobject -class win32_VideoController | select-object -expand name";
      var reply = window.ipcRenderer.sendSync("execute-powershell", (event, command));
      console.log(reply);
      this.cg = reply
    },
  },
};
</script>

<style scoped>
</style>