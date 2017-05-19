import * as types from './mutation-types'

export default {
  [types.RECEIVE_MOVIES] (state, { movies }) {
    state.movies = movies
  },
  [types.RECEIVE_MOVIE] (state, { movie }) {
    state.movie = movie
  }
}
