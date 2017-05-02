import MoviesResource from '../api/MoviesResource'
import MovieResource from '../api/MovieResource'
import * as types from './mutation-types'

export const getMovies = ({ commit }, transport) => {
  let moviesResource = new MoviesResource(transport)

  moviesResource.get()
    .then(response => {
      let movies = response.data
      commit(types.RECEIVE_MOVIES, {
        movies
      })
    })
}

export const getMovie = ({ commit }, data) => {
  let movieResource = new MovieResource({...data})

  movieResource.get()
    .then(response => {
      let movie = response.data
      commit(types.RECEIVE_MOVIE, {
        movie
      })
    })
}
