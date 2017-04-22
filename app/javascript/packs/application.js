import Vue from 'vue'
import VueResource from 'vue-resource'
import App from '../components/App.vue'

Vue.use(VueResource)

document.addEventListener('DOMContentLoaded', () => {
  document.body.appendChild(document.createElement('app'))
  const app = new Vue({
    el: 'app',
    template: '<App/>',
    components: { App }
  })
})
