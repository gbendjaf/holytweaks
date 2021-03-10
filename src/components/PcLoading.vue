<template>
  <div>
    <p class="cm">Carte mère :<br />{{ $store.state.Mb }}</p>
    <p class="cpu">Processeur :<br />{{ $store.state.Cpu }}</p>
    <p class="ram">RAM :<br />{{ $store.state.Ram }}</p>
    <p class="gpu">Carte Graphique :<br />{{ $store.state.Cgu }}</p>
    <button @click="next" id="button"><div></div></button>
    <h1 id="title">Votre configuration</h1>
    <img id="boitier" src="../assets/loading/Boitier Tour.png" />
    <img id="cm" src="../assets/loading/Carte mère.png" />
    <img id="cpu" src="../assets/loading/Processeur.png" />
    <img id="gpu" src="../assets/loading/Carte Graphique.png" />
    <img id="ram" src="../assets/loading/RAM.png" />
    <svg class="svg" height="500" width="900">
      <path id="lineRAM" d="M520 180 L600 100 L848 100" />
      <circle id="circleRAM" cx="520" cy="180" r="4" fill="#0072ff" />
      <path id="lineCGU" d="M500 306 L807 306" />
      <circle id="circleCGU" cx="500" cy="306" r="4" fill="#0072ff" />
      <path id="lineCPU" d="M430 230 L320 306 L127 306" />
      <circle id="circleCPU" cx="430" cy="230" r="4" fill="#0072ff" />
      <path id="lineCM" d="M400 180 L320 100 L127 100" />
      <circle id="circleCM" cx="400" cy="180" r="4" fill="#0072ff" />
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
    var tl = gsap.timeline();

    tl.from("#title", { duration: 0.5, opacity: 0, scale: 0.3, ease: "back" });
    tl.to("#title", { duration: 0.2, y: 30, ease: "expo" }, "+=0.5");
    tl.to("#title", { duration: 0.7, y: -267, ease: "expo" });
    tl.from("#boitier", { duration: 0.7, x: 1000, ease: "expo" }, "-=0.2");
    tl.from("#cm", { duration: 0.8, x: -1000, ease: "expo" }, "-=0.4");
    tl.from("#cpu", { duration: 0.5, x: -1000, ease: "expo" }, "-=0.3");
    tl.from("#gpu", { duration: 0.5, x: -1000, ease: "expo" }, "-=0.3");
    tl.from("#ram", { duration: 0.5, x: -1000, ease: "expo" }, "-=0.3");
    tl.from("#circleCM", {
      duration: 0.2,
      ease: "back",
      scale: 0.3,
      opacity: 0,
    });
    tl.to(
      "#lineCM",
      {
        duration: 0.3,
        ease: "sine",
        strokeDashoffset: 0,
      },
      "-=0.1"
    );
    tl.from(".cm, .cmTitle", {
      duration: 0.2,
      ease: "back",
      scale: 0.3,
      opacity: 0,
    });
    tl.from("#circleCPU", {
      duration: 0.2,
      ease: "back",
      scale: 0.3,
      opacity: 0,
    });
    tl.to(
      "#lineCPU",
      {
        duration: 0.3,
        ease: "sine",
        strokeDashoffset: 0,
      },
      "-=0.1"
    );
    tl.from(".cpu, .cpuTitle", {
      duration: 0.2,
      ease: "back",
      scale: 0.3,
      opacity: 0,
    });
    tl.from("#circleCGU", {
      duration: 0.2,
      ease: "back",
      scale: 0.3,
      opacity: 0,
    });
    tl.to(
      "#lineCGU",
      {
        duration: 0.3,
        ease: "sine",
        strokeDashoffset: 0,
      },
      "-=0.1"
    );
    tl.from(".gpu, .gpuTitle", {
      duration: 0.2,
      ease: "back",
      scale: 0.3,
      opacity: 0,
    });
    tl.from("#circleRAM", {
      duration: 0.2,
      ease: "back",
      scale: 0.3,
      opacity: 0,
    });
    tl.to(
      "#lineRAM",
      {
        duration: 0.3,
        ease: "sine",
        strokeDashoffset: 0,
      },
      "-=0.1"
    );
    tl.from(".ram, .ramTitle", {
      duration: 0.21,
      ease: "back",
      scale: 0.3,
      opacity: 0,
    });
    tl.from("#button", {
      duration: 1,
      ease: "back",
      y: 100
    }, "+=1");
  },
  methods: {
    next() {
      this.$router.replace({ path: "exec1" });
    },
  },
};
</script>

<style scoped>
body {
  user-select: none;
  -webkit-user-drag: none;
  -webkit-user-select: none;
}
img {
  user-select: none;
  -webkit-user-drag: none;
  -webkit-user-select: none;
}
h1 {
  z-index: 4;
  position: absolute;
  left: 16.6em;
  top: 10.2em;
  font-family: PossibleSansMedium;
  background: -webkit-linear-gradient(#0072ff, #0052b7);
  background-clip: text;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  font-size: 30px;
  user-select: none;
  -webkit-user-drag: none;
  -webkit-user-select: none;
}
p {
  user-select: none;
  -webkit-user-drag: none;
  -webkit-user-select: none;
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
  stroke-width: 3;
  fill: none;
  filter: drop-shadow(1px 1px 0px white) drop-shadow(-1px 1px 0px white)
    drop-shadow(1px -1px 0px white) drop-shadow(-1px -1px 0px white);
}
#lineRAM {
  stroke-dasharray: 362;
  stroke-dashoffset: 362;
}
#lineCGU {
  stroke-dasharray: 307;
  stroke-dashoffset: 307;
}
#lineCPU {
  stroke-dasharray: 327;
  stroke-dashoffset: 327;
}
#lineCM {
  stroke-dasharray: 307;
  stroke-dashoffset: 307;
}
.cm {
  text-align: center;
  position: absolute;
  left: 4em;
  top: 8.2em;
  font-size: 20px;
  font-family: PossibleSans;
  color: #0052b7;
}
.cpu {
  text-align: center;
  position: absolute;
  left: 2em;
  top: 18.5em;
  font-size: 20px;
  font-family: PossibleSans;
  color: #0052b7;
}
.ram {
  text-align: center;
  position: absolute;
  left: 47.5em;
  top: 8.2em;
  font-size: 20px;
  font-family: PossibleSans;
  color: #0052b7;
}
.gpu {
  text-align: center;
  position: absolute;
  left: 47em;
  top: 18.6em;
  font-size: 20px;
  font-family: PossibleSans;
  color: #0052b7;
}
button {
  position: absolute;
  top: 92%;
  left: 42em;
  display: block;
  width: 149px;
  padding: 27px;
  margin: 0 auto;
  border: none;
  cursor: pointer;
  transform: translateY(-50%);
  overflow: hidden;
  border-radius: 28px;
}

button:focus {
  outline: none;
}

button:before {
  content: "";
  position: absolute;
  top: -3em;
  right: 0;
  bottom: 0;
  left: 0;
}

button:before {
  transform: scale(1);
  background-image: url("../assets/image bouton.png");
  background-size: cover;
  transition: 0.2s ease transform;
  z-index: 1;
}

button div {
  position: absolute;
  top: 0em;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 3;
}

button div:before {
  position: absolute;
  top: 17px;
  right: 0;
  left: 0;
  color: #fff;
  font-size: 20px;
  font-family: PossibleSansBold;
  text-align: center;
  transition: 0.2s ease;
}

button div:before {
  content: "SUIVANT";
  letter-spacing: 0;
  opacity: 1;
  transform: scale(1);
}

button:hover:before {
  transform: scale(1.3);
}

button:hover div:before {
  transform: scale(1.05);
  letter-spacing: 1px;
}
</style>