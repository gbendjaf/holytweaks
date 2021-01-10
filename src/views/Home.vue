<template>
  <div class="home">
    <h1>Bonjour !</h1><br>
    <p class="bonjour">Avant de commencer, nous vous invitons à entrer votre clé d'activation Holy Tweaks.</p>
    <p class="chuchotements">(histoire d'être sûr que vous n'êtes pas un vilain qui veux nous piquer notre super logiciel)</p>
    <SerialInput/>
  </div>
</template>

<script>
import SerialInput from '@/components/SerialInput.vue'

export default {
  name: 'Home',
  components: {
    SerialInput
  }
}
</script>

<style scoped>
.home {
  font-family: KeepCalmBook;
  font-size: 20px
}
.chuchotements {
  font-size: 15px
}
</style>