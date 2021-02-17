<template>
    <PcLoading />
</template>

<script>
import PcLoading from "@/components/PcLoading.vue";

export default {
  name: "Loading",
  components: {
    PcLoading,
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

</style>