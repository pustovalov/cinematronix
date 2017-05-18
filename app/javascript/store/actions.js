import MovieResource from '../api/MovieResource'
import * as types from './mutation-types'

export const getMovies = ({ commit }, data) => {
  let movieResource = new MovieResource({...data})

  movieResource.index()
    .then(response => {
      let movies = response.data
      commit(types.RECEIVE_MOVIES, {
        movies
      })
    })
}

export const getMovie = ({ commit }, data) => {
  let movieResource = new MovieResource({...data})

  movieResource.show(data.id)
    .then(response => {
      let movie = response.data
      commit(types.RECEIVE_MOVIE, {
        movie
      })
    })
}
