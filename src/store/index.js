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
    Cgu: " ",
    Cpu: " ",
    Ram: " ",
    Mb: " "
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
    CGU_CHANGE(state, payload) {
      state.Cgu = payload
    },
    CPU_CHANGE(state, payload) {
      state.Cpu = payload
    },
    RAM_CHANGE(state, payload) {
      state.Ram = payload
    },
    MOTHERBOARD_CHANGE(state, payload) {
      state.Mb = payload
    },
  },
  actions: {
  },
  modules: {
  }
});
