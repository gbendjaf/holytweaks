<template>
  <div class="home">
    <div class="texte">
      <h1>Bonjour !</h1>
      <p class="bonjour">Avant de commencer, nous vous invitons à entrer votre clé d'activation Holy Tweaks.</p>
      <p class="chuchotements">(histoire de nous assurer que vous êtes bien vous)</p>
    </div>
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
h1, p, br {
  user-select: none;
  -moz-user-select: none;
  -webkit-user-drag: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
.texte {
  text-align: left;
  margin-left: 177px;
  margin-top: -20px;
}
h1 {
  font-family: PossibleSansBold;
  background: -webkit-linear-gradient(#0072ff, #0052b7);
  background-clip: text;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  font-size: 45px;
  margin-top: 0px;
  margin-top: 146px;
}
.bonjour {
  font-family: PossibleSansMedium;
  background: -webkit-linear-gradient(#0072ff, #0052b7);
  background-clip: text;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  margin-bottom: 0;
  font-size: 20px;
}
.chuchotements {
  font-family: PossibleSansMedium;
  background: -webkit-linear-gradient(#0072ff, #0052b7);
  background-clip: text;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  margin-top: 5px;
  font-size: 13px;
}
</style>