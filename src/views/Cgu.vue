<template>
  <div class="home">
    <h1>Conditions d'utilisation.</h1>
    <ScrollBox ref="scrollBox" />
  </div>
</template>

<script>
import ScrollBox from "@/components/ScrollBox.vue";

export default {
  name: "Cgu",
  components: {
    ScrollBox,
  },
  data: () => ({}),
};
</script>

<style scoped>
h1 {
  font-family: PossibleSansMedium;
  background: -webkit-linear-gradient(#0072ff, #0052b7);
  background-clip: text;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  font-size: 45px;
  margin: 0.4em 0 0.1em 3.3em;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-drag: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
</style>