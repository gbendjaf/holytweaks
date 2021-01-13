<template>
  <div id="app">
  <TitleBar/>
    <router-view class="router" />
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
  margin: 41px 0 0 0;
}
body {
  margin: 0;
  background-image: url("./assets/backgroundlogiciel.png");
}
#app {
  width: 1280px;
  height: 720px;
  overflow: hidden;
  margin: 0;
  background-image: url("./assets/backgroundlogiciel.png");
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

@font-face {
  font-family: "KeepCalmBook";
  src: url(./assets/fonts/KeepCalmBook.ttf) format("truetype");
}
</style>
