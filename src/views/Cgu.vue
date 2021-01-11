<template>
  <div class="home">
    <p>Parent:{{updatedScroll}}</p>
    <ScrollBox @scrolled="updateScroll" ref="scrollBox"/>
  </div>
</template>

<script>
import ScrollBox from '@/components/ScrollBox.vue'

export default {
  name: 'Cgu',
  components: {
    ScrollBox
  },
  data:() => ({
      updatedScroll: 0,
  }),
  methods: {
    updateScroll(payload) {
      this.updatedScroll = payload.update
    },
    changeScroll(value) {
      this.$refs.form.changeScroll(value);
      console.log('Trigger')
    }
  }
}
</script>

<style scoped>
p {
  font-family: KeepCalmBook;
  font-size: 20px
}
</style>