<template>
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-4 col-md-offset-4">
        <div class="movie text-center">
          <h3>
              {{ movie.name }}
          </h3>
          <div v-if="movie.image" class="movie-img">
            <img :src="movie.image.thumb.url">
          </div>
          <p class="movie-description">
            {{ movie.description }}
          </p>
          <div>
            <b>duration:</b> {{ movie.duration }}
          </div>
        </div>
      </div>
    </div>
    <HallList />
  </div>
</template>

<script>
  import HallList from './HallList.vue'
  import { mapGetters } from 'vuex'

  export default {
    components: {
      HallList
    },
    data() {
      const data = {
        movieId: null
      }
      return data
    },
    computed: {
      ...mapGetters([
        'movie'
      ])
    },
    methods: {
      fetchMovie(id) {
        this.$store.dispatch('getMovie', { transport: this.$http, id: id })
      }
    },
    created() {
      this.movieId = this.$route.params.id
      this.fetchMovie(this.movieId)
    }
  }
</script>

<style lang="scss">
  .movie {
    &-img {
      margin-bottom: 20px;
    }
  }
</style>
