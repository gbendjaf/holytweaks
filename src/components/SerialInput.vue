<template>
    <div class="container">
      <div class="webflow-input">
        <input type="key" placeholder="Entrez la clé produit..." v-model="serialKey" v-mask="'#### #### #### ####'" /> <br>
      </div>
      <button @click="checkSerialKey">
        <div></div>
      </button>
    </div>
</template>

<script>
import {mask} from 'vue-the-mask'
//import {axios} from 'axios'
export default {
  directives: {mask},
  name: 'SerialInput',
    data: () => ({
    serialKey: String,
    noBlankSerial: Number
    }),
  methods: {
    checkSerialKey: function() {
      if ( this.serialKey.length === 19 && this.serialKey.replace(/\s/g, '').match(/^[0-9]+$/) != null ) {
        this.noBlankSerial = this.serialKey.replace(/\s/g, '')
        this.$store.state.checkedSerial = this.noBlankSerial
        this.$router.push({ path: 'cgu' })
      } else if ( this.serialKey === "" ) {
        console.log('Veuillez entrer une clé')
      } 
      else {
        console.log('Votre clé est fausse')
      }
    }
  }
}
</script>

<style lang="scss" scoped>
html { box-sizing: border-box}
input { border-style: none; background: transparent; outline: none; }

.container {
  margin: 20px 0 0 177px;
}
body {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  background-image: radial-gradient(circle at 0% 0%, #373b52, #252736 51%, #1d1e26);
}

$input-background: #e7ebef;
$input-text-inactive: #b6b9be;
$input-text-active: #012b5f;

@keyframes gradient { 
  0%{background-position:100% 0}
  100%{background-position:0 100%}
}

.webflow-input {
  position: relative;
  display: flex;
  width: 800px;
  border-radius: 2px;
  padding: 8px 10px 6px 10px;
  background: $input-background;
  &:after {
    content: "";
    position: absolute;
    left: 0px;
    right: 0px;
    bottom: 0px;
    height: 4px;
    background: linear-gradient(to left, #00fff0, #0072fe, #e900fe, #0072fe, #00fff0, #0072fe);
    background-size: 500% auto;
    animation: gradient 5s linear infinite;
  }
}

.webflow-input input {
  font-family: PossibleSansMediumItalic;
  flex-grow: 1;
  color: $input-text-active;
  font-size: 20px;
  line-height: 2.4rem;
  vertical-align: middle;
  &::-webkit-input-placeholder {
    color: $input-text-inactive;
  }
}

br, button {
  user-select: none;
  -moz-user-select: none;
  -webkit-user-drag: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

button
{
    position: absolute;
    top: 57%;
    right: 0;
    left: 43em;
    display: block;
    width: 140px;
    padding: 27px;
    margin: 0 auto;
    border: none;
    cursor: pointer;
    transform: translateY(-50%);
    overflow: hidden;
}

button:focus { outline: none; }

button:before, button:after
{
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
}

button:before
{
    transform: scale(1);
    background-image: url('../assets/image bouton.png');
    background-size: cover;
    transition: 0.2s ease transform;
    z-index: 1;
}

button:after
{
    opacity: 0.16;
    z-index: 2;
}

button div
{
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 3;
}

button div:before, button div:after
{
    position: absolute;
    top: 0;
    right: 0;
    left: 0;
    color: #fff;
    font-size: 20px;
    font-family: PossibleSansBold;
    text-align: center;
    padding: 17px 0;
    transition: 0.2s ease all;
}

button div:before
{
    content: "OK ?";
    letter-spacing: 0;
    opacity: 1;
    transform: scale(1);
}

button div:after
{
    content: "GO !";
    letter-spacing: -10px;
    font-size: 26px;
    padding: 13px 0;
    transform: scale(0);
    opacity: 0;
}

button:hover:before
{
    transform: scale(1.3);
}

button:hover div:before
{
    letter-spacing: 3px;
    opacity: 0;
    transform: scale(4);
}

button:hover div:after
{
    letter-spacing: 0;
    opacity: 1;
    transform: scale(1);
}
</style>