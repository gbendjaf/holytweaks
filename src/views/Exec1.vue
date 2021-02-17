<template>
  <div>
    <p>Carte Graphique : {{ $store.state.Cgu }}</p>
    <br />
    <p>Processeur : {{ $store.state.Cpu }}</p>
    <br />
    <p>RAM : {{ $store.state.Ram }}</p>
    <br />
    <p>Carte mère : {{ $store.state.Mb }}</p>
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
  mounted() {
    
  },
};
</script>

<style scoped>
</style>