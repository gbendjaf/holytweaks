<template>
  <div class="app-container">
    <div class="title-bar"><TitleBar /></div>
    <div class="nav-bar"><NavBar /></div>
    <router-view class="router" />
    <!--<footer class="version">V {{ $store.state.version }}</footer>-->
  </div>
</template>

<script>
import TitleBar from "@/components/TitleBar.vue";
import NavBar from "@/components/NavBar.vue";
//import axios from "axios";

export default {
  name: "App",
  components: {
    TitleBar,
    NavBar,
  },
  /*mounted() {
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
  },*/
  //Mute this so the localstorage is not clear every time
  beforeDestroy() {
    const vuex = JSON.parse(localStorage.getItem("vuex"));
    if (vuex) {
      localStorage.removeItem(vuex);
    }
  },
};
</script>

<style>
body {
  margin: 0;
  overflow: hidden;
}
.app-container {
  width: 1280px;
  height: 720px;
  overflow: hidden;
  display: flex;
  flex-wrap: wrap;
  border-radius: 50px;
  background: linear-gradient(180deg, #dce5e9, #f8fdfb);
}
.title-bar {
  text-align: center;
  align-self: flex-start;
  overflow: hidden;
}
.nav-bar {
  text-align: center;
  flex: 96px;
}
.router {
  width: 1184px;
  height: 640px;
  text-align: center;
}
.version {
  font-family: PossibleSans;
  color: #74a6ff;
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
