<template>
    <div class="bouton">
          <input v-model="serialKey" type="text" v-mask="'#### #### #### ####'" /> <br>
        <button @click="checkSerialKey" >Go !</button> <br>
        <p>Clé non refactoré {{serialKey}}</p>
    </div>
</template>

<script>
import {mask} from 'vue-the-mask'
export default {
  directives: {mask},
  name: 'SerialInput',
    props: {
    serialKey: String,
    noBlankSerial: Number
    },
  methods: {
    checkSerialKey: function() {
      if (this.serialKey.length === 19 && this.serialKey.replace(/\s/g, '').match(/^[0-9]+$/) != null) {
        this.noBlankSerial = this.serialKey.replace(/\s/g, '')
        this.$store.state.checkedSerial = this.noBlankSerial
        this.$router.push({ path: 'cgu' })
      } else {
        alert('Votre clé est fausse')
      }
    }
  }
}
</script>

<style scoped>

</style>