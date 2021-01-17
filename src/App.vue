<template>
  <div id="app">
  <TitleBar/>
    <router-view class="router" />
  <footer id="version">V {{$store.state.version}}</footer>
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
#version {
  font-family: PossibleSans;
  color: #74a6ff;
  position: absolute;
  bottom: 0;
  right: 0;
  margin: 0 1.5em 0.5em 0;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-drag: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
@font-face {
  font-family: "PossibleSansBold";
  src: url(./assets/fonts/PossibleSansBold.ttf) format("truetype");
}
@font-face {
  font-family: "PossibleSansMedium";
  src: url(./assets/fonts/PossibleSansMedium.ttf) format("truetype");
}
@font-face {
  font-family: "PossibleSansMediumItalic";
  src: url(./assets/fonts/PossibleSansMediumItalic.ttf) format("truetype");
}
@font-face {
  font-family: "PossibleSans";
  src: url(./assets/fonts/PossibleSans.ttf) format("truetype");
}
</style>
