<template>
  <div>
    <button @click="next"></button>
    <img id="boitier" src="../assets/loading/Boitier Tour.png" />
    <img id="cm" src="../assets/loading/Carte mère.png" />
    <img id="cpu" src="../assets/loading/Processeur.png" />
    <img id="gpu" src="../assets/loading/Carte Graphique.png" />
    <img id="ram" src="../assets/loading/RAM.png" />
    <svg class="svg" height="500" width="900">
        <path id="lineRAM" d="M520 180 L600 100 L800 100" />
        <path id="lineCGU" d="M500 306 L800 306" />
        <path id="lineCPU" d="M430 230 L320 306 L100 306" />
        <path id="lineCM" d="M400 180 L320 100 L100 100" />
    </svg>
  </div>
</template>

<script>
import { gsap } from "gsap";

export default {
  name: "PcLoading",
  data() {
    return {};
  },
  mounted() {
    gsap.from("#boitier", { duration: 0.8, x: 1000, ease: "expo" });
    gsap.from("#cm", { duration: 0.8, x: -1000, delay: 0.5, ease: "expo" });
    gsap.from("#cpu", { duration: 0.5, x: -1000, delay: 0.8, ease: "expo" });
    gsap.from("#gpu", { duration: 0.5, x: -1000, delay: 0.9, ease: "expo" });
    gsap.from("#ram", { duration: 0.5, x: -1000, delay: 1, ease: "expo" });
    gsap.to("#lineCM", {
      duration: 1,
      delay: 1.3,
      ease: "sine",
      strokeDashoffset: 0,
    });
    gsap.to("#lineCPU", {
      duration: 1,
      delay: 1.6,
      ease: "sine",
      strokeDashoffset: 0,
    });
    gsap.to("#lineCGU", {
      duration: 1,
      delay: 1.9,
      ease: "sine",
      strokeDashoffset: 0,
    });
    gsap.to("#lineRAM", {
      duration: 1,
      delay: 2.21,
      ease: "sine",
      strokeDashoffset: 0,
    });
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
  methods: {
    next() {
      this.$router.replace({ path: "exec1" });
      //console.log('OUI OUI TAXI')
    },
  },
};
</script>

<style scoped>
body {
  user-select: none;
  -moz-user-select: none;
  -webkit-user-drag: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
#boitier {
  position: absolute;
  z-index: 0;
  width: 30%;
  left: 27.5em;
  top: 7em;
}
#cm {
  position: absolute;
  z-index: 1;
  width: 13%;
  left: 34em;
  top: 14.4em;
}
#cpu {
  position: absolute;
  z-index: 2;
  width: 3.3%;
  left: 36em;
  top: 18.7em;
}
#gpu {
  position: absolute;
  z-index: 2;
  width: 14%;
  left: 31.5em;
  top: 24em;
}
#ram {
  position: absolute;
  z-index: 2;
  width: 3.3%;
  left: 40.3em;
  top: 15.4em;
}
.svg {
  position: absolute;
  z-index: 3;
  left: 10em;
  top: 6em;
  stroke: #0072ff;
  stroke-width: 4;
  fill: none;
}
#lineRAM {
  stroke-dasharray: 314;
  stroke-dashoffset: 314;
}
#lineCGU {
  stroke-dasharray: 301;
  stroke-dashoffset: 301;
}
#lineCPU {
  stroke-dasharray: 354;
  stroke-dashoffset: 354;
}
#lineCM {
  stroke-dasharray: 334;
  stroke-dashoffset: 334;
}
</style>