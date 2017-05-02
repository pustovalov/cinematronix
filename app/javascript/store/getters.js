export const movies = state => state.movies
export const movie = state => state.movie
export const movieHalls = state => {
  let halls = state.movie.halls
  let movieSessions = state.movie.movie_sessions

  if (halls && movieSessions) {
    halls.map(hall => {
      let hallMovieSessions = movieSessions.filter(movieSession => movieSession.hall_id == hall.id)
      hall.movie_sessions = hallMovieSessions
    })
  }
  
  return halls
}
