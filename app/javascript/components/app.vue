<template>
  <div id='app'>
    <p>{{ message }}</p>
    <ul id="movie-list" class="movie-list">
      <movie-item v-for="movie in movies" :key="movie.id" :movie="movie"></movie-item>
    </ul>
  </div>
</template>

<script>
  import MovieItem from './MovieItem.vue'

  export default {
    components: {
      MovieItem
    },
    data() {
      const data = {
        message: "sup",
        movieEndPoint: "/movies",
        movies: []
      }
      return data
    },
    methods: {
      fetchMovies() {
        this.$http.get(this.movieEndPoint).then(response => {
          this.movies = response.data
        })
      }
    },
    created() {
      this.fetchMovies()
    }
  }
</script>

<style lang="scss" scoped>
  p {
    font-size: 2em;
    text-align: center;
  }

  .movie-list {
    display: flex;
    list-style: none;
    flex-wrap: wrap;
    width: 1000px;
    margin: 0 auto;
  }
</style>
