import Vue from 'vue'
import Router from 'vue-router'
import App from '../components/App.vue'
import Movie from '../components/Movie.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    { path: '/', component: App },
    {
      path: '/movies/:id',
      name: 'movies',
      component: Movie
    },
  ]
})
