export default class MovieResource {
  constructor(data) {
    this.transport = data.transport
  }

  index() {
    return this.transport.get('/api/movies')
  }

  show(id) {
    return this.transport.get(`/api/movies/${id}`)
  }
}
