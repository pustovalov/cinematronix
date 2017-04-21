<template>
  <div id='app'>
    <p>{{ message }}</p>
    <ul id="movie-list" class="movie-list">
      <movie-item v-for="movie in movies" :key="movie.id" :movie="movie"></movie-item>
    </ul>
  </div>
</template>

<script>
  import { movies } from '../data/movies.js'
  import MovieItem from './MovieItem.vue'

  export default {
    components: {
      MovieItem
    },
    data() {
      const data = {
        message: "sup",
        movies: movies
      }
      return data
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
