import Vue from 'vue'
import Vuex from 'vuex'
import createPersistedState from 'vuex-persistedstate'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    version: "0.1.0",
    errorMessage: " ",
    checkedSerial: " ",
    apiId: " ",
    token: " ",
    graphicCard: " ",
  },
  plugins: [createPersistedState()],
  mutations: {
    SERIAL_CHANGE(state, payload) {
      state.checkedSerial = payload;
    },
    ID_CHANGE(state, payload) {
      state.apiId = payload;
    },
    TOKEN_CHANGE(state, payload) {
      state.token = payload;
    },
  },
  actions: {
  },
  modules: {
  }
});
