<template>
  <li class="col-md-4">
    <div class="movie-item thumbnail">
      <h3>
        <router-link :to="{ name: 'movies', params: { id: movie.id } }">
          {{ movie.name }}
        </router-link>
      </h3>
      <div class="movie-item-img">
        <img :src="movie.image.thumb.url">
      </div>
      <div class="movie-item-description">
        {{ movie.description }}
      </div>
      <div>
        <b>duration:</b> {{ movie.duration }}
      </div>
    </div>
  </li>
</template>

<script>
  export default {
    name: 'movie-item',
    props: ['movie']
  }
</script>

<style lang="scss">
  .movie-item {
    h3 {
      min-height: 50px;

      a {
        color: #000;
        text-decoration: underline;

        &:hover {
          text-decoration: none;
        }
      }
    }

    &-img {
      text-align: center;
      margin-bottom: 10px;

      img {
        display: inline-block;
      }
    }

    &-description {
      margin-bottom: 10px;
    }
  }
</style>
