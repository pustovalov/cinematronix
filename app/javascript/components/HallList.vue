<template>
  <div class="row hall-list-container">
    <h4 class="text-center">Movies Halls:</h4>
    <ul class="list-unstyled hall-list">
      <li v-for="hall in movieHalls" class="col-md-12">
        <b class="hall-title">
          {{ hall.name }}
        </b>
        <movie-sessions-list :movieSessions="hall.movie_sessions" />
      </li>
    </ul>
  </div>
</template>

<script>
  import { mapGetters } from 'vuex'
  import movieSessionsList from './movieSessionsList.vue'

  export default {
    name: 'hall-list',
    components: {
      movieSessionsList
    },
    computed: {
      ...mapGetters([
        'movieHalls'
      ])
    },
  }
</script>

<style lang="scss">
  .hall {
    &-title {
      display: block;
      margin-bottom: 10px;
    }
    &-list {
      text-align: center;
      &-container {
        margin-top: 40px;
      }
    }
  }
</style>
