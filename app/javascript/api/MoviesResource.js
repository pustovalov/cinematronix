export default class MoviesResource {
  constructor(transport) {
    this.transport = transport
    this.endPoint = '/api/movies'
  }

  get() {
    return this.transport.get(this.endPoint)
  }
}
