<template>
  <li class="movie-item">
    <h3>
      {{ movie.name }}
    </h3>
    <div class="movie-item-img">
      <img :src="movie.image.thumb.url">
    </div>
    <div class="movie-item-description">
      {{ movie.description }}
    </div>
    <div>
      <b>duration:</b> {{ formatedDuration }}
    </div>
  </li>
</template>

<script>
  export default {
    name: 'movie-item',
    props: ['movie'],
    computed: {
      formatedDuration() {
        return `${Math.round(this.movie.duration / 60)} minutes`
      }
    }
  }
</script>

<style lang="scss">
  .movie-item {
    width: 320px;
    margin: 0 0 20px 20px;

    &:first-child,
    &:nth-child(3n+1) {
      margin-left: 0;
    }

    h3 {
      min-height: 50px;;
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
