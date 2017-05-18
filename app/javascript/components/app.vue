<template>
  <div id='app' class="container-fluid">
    <h2 class="text-center">{{ title }}</h2>
    <ul class="movie-list list-unstyled movie-list">
      <movie-item v-for="movie in movies" :key="movie.id" :movie="movie"></movie-item>
    </ul>
  </div>
</template>

<script>
  import MovieItem from './MovieItem.vue'
  import { mapGetters } from 'vuex'

  export default {
    components: {
      MovieItem
    },
    data() {
      const data = {
        title: "movies"
      }
      return data
    },
    computed: {
      ...mapGetters([
        'movies'
      ])
    },
    methods: {
      fetchMovies() {
        this.$store.dispatch('getMovies', { transport: this.$http })
      }
    },
    created() {
      this.fetchMovies()
    }
  }
</script>

<style lang="scss">

</style>
