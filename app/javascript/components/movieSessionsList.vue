<template>
  <ul class="row list-group list-group-horizontal movie-sessions-list">
    <li v-for="movieSession in movieSessions" class="list-group-item col-md-2 col-md-offset-4 movie-sessions-list-item">
      {{ movieSession.start_time }}
    </li>
  </ul>
</template>

<script>
  export default {
    name: 'movieSessions',
    props: ['movieSessions']
  }
</script>

<style lang="scss">
  .movie-sessions-list {
    &-item {
      margin-bottom: 20px;
    }
  }
</style>
