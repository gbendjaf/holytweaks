<template>
  <div id="app">
  <TitleBar/>
    <router-view class="router" />
  <p>V 0.1.0</p>
  </div>
</template>

<script>
import TitleBar from '@/components/TitleBar.vue'

export default {
  name: 'App',
  components: {
    TitleBar
  }
}
</script>

<style>
.router {
  width: 1280px;
  height: 679px;
}
body {
  margin: 0;
}
#app {
  width: 1280px;
  height: 720px;
  overflow: hidden;
  background-image: url("./assets/backgroundlogiciel.png");
  -moz-osx-font-smoothing: grayscale;
}
@font-face {
  font-family: "PossibleSansBold";
  src: url(./assets/fonts/PossibleSansBold.ttf) format("truetype");
}
@font-face {
  font-family: "PossibleSansMedium";
  src: url(./assets/fonts/PossibleSansMedium.ttf) format("truetype");
}
</style>
