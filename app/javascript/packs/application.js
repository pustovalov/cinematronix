import Vue from 'vue'
import VueResource from 'vue-resource'
import router from '../router'
import store from '../store'
import App from '../components/App.vue'
import '!style-loader!css-loader!bootstrap/dist/css/bootstrap.css'

Vue.use(VueResource)

document.addEventListener('DOMContentLoaded', () => {
  document.body.appendChild(document.createElement('app'))

  const app = new Vue({
    el: 'app',
    router,
    store,
    template: '<router-view></router-view>'
  })
})
