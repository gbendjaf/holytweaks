<template>
  <div id="app">
    <TitleBar />
    <router-view class="router" />
    <footer id="version">V {{ $store.state.version }}</footer>
  </div>
</template>

<script>
import TitleBar from "@/components/TitleBar.vue";
import axios from "axios";

export default {
  name: "App",
  components: {
    TitleBar,
  },
  mounted() {
    this.$store.state.errorMessage = " ";
    if (this.$store.state.token != " ") {
      axios.defaults.headers.common["Authorization"] =
        "Bearer " + this.$store.state.token;
      let headerConfig = {
        headers: {
          "Content-Type": "application/json;charset=UTF-8",
        },
      };
      axios
        .get("http://localhost:3000/serial/validity", headerConfig)
        .then((res) => {
          console.log(res);
          this.$router.replace({ path: "loading" });
        })
        .catch((err) => {
          console.log(err);
          if (err.response) {
            this.$store.state.errorMessage = "Token invalide.";
            var postData = {
              key: this.$store.state.checkedSerial,
              id: this.$store.state.apiId,
            };
            axios
              .post(
                "http://localhost:3000/serial/login",
                postData,
                headerConfig
              )
              .then((res) => {
                console.log(res);
                this.$store.commit("TOKEN_CHANGE", res.data.token);
                this.$router.replace({ path: "loading" });
              })
              .catch((err) => {
                if (err.response.status === 429) {
                  this.$store.state.errorMessage =
                    "Trop de tentatives, veuillez re-essayer dans 1 heure.";
                } else {
                  this.$store.state.errorMessage = "Votre clé est invalide.";
                }
              });
          } else if (err.request) {
            this.$store.state.errorMessage =
              "Connexion au serveur impossible, veuillez relancer l'application.";
          }
        });
    }
  },
  //Mute this so the localstorage is not clear every time
  /*beforeDestroy() {
    const vuex = JSON.parse(localStorage.getItem("vuex"));
    if (vuex) {
      localStorage.removeItem(vuex);
    }
  },*/
};
</script>

<style>
.router {
  width: 1280px;
  height: 679px;
}
body {
  margin: 0;
  overflow: hidden;
}
#app {
  width: 1280px;
  height: 720px;
  overflow: hidden;
  background-image: url("./assets/backgroundlogiciel.png");
  -moz-osx-font-smoothing: grayscale;
}
#version {
  font-family: PossibleSans;
  color: #74a6ff;
  position: absolute;
  bottom: 0;
  right: 0;
  margin: 0 1.5em 0.5em 0;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-drag: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
@font-face {
  font-family: "PossibleSansBold";
  src: url(./assets/fonts/PossibleSansBold.ttf) format("truetype");
}
@font-face {
  font-family: "PossibleSansMedium";
  src: url(./assets/fonts/PossibleSansMedium.ttf) format("truetype");
}
@font-face {
  font-family: "PossibleSansMediumItalic";
  src: url(./assets/fonts/PossibleSansMediumItalic.ttf) format("truetype");
}
@font-face {
  font-family: "PossibleSans";
  src: url(./assets/fonts/PossibleSans.ttf) format("truetype");
}
@font-face {
  font-family: "KeepCalm-Medium";
  src: url(./assets/fonts/KeepCalm-Medium.ttf) format("truetype");
}
</style>
