import Vue from "vue";
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'

// import App from "./App.vue";
import LayoutBaseline from './LayoutBaseline.vue';

Vue.use(Vuetify)

new Vue({
  el: "#LayoutBaseline",
  render: h => h(LayoutBaseline)
});
