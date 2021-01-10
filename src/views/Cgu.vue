<template>
  <div class="home">
    <p>Parent: {{updatedScroll}}</p>
  <div class="block" id="1"></div>
  <div class="block" id="2"></div>
  <div class="block" id="3"></div>
  <div class="block" id="4"></div>
  <div class="block" id="5"></div>
  <div class="block" id="6"></div>
  <div class="block" id="7"></div>
  <div class="block" id="8"></div>
  <div class="block" id="9"></div>
  <div class="block" id="10"></div>
  <div class="block" id="11"></div>
  <div class="block" id="12"></div>
  <div class="block" id="13"></div>
  <div class="block" id="13"></div>
    <ScrollBox @scrolled="updateScroll" />
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
      receivedMessage: 'No message'
  }),
  methods: {
    updateScroll(payload) {
      this.updatedScroll = payload.update
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