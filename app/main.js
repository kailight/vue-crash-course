import Vue from 'vue'
import App from './App.vue'
Vue.config.productionTip = false

require('normalize.css')

window.Vue = new Vue({
  render: h => h(App),
  mounted() {
  }
}).$mount('#app')
