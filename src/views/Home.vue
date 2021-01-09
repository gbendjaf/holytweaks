<template>
  <div class="home">
    <!--<img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/>-->
    <h1>Bonjour !</h1><br>
    <p class="bonjour">Avant de commencer, nous vous invitons à entrer votre clé d'activation Holy Tweaks.</p>
    <p class="chuchotements">(histoire d'être sûr que vous n'êtes pas un vilain qui veux nous piquer notre super logiciel)</p>
    <SerialInput/>
  </div>
</template>

<script>
// @ is an alias to /src
//import HelloWorld from '@/components/HelloWorld.vue'
import SerialInput from '@/components/SerialInput.vue'

export default {
  name: 'Home',
  components: {
    //HelloWorld,
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