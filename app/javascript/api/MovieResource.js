export default class MovieResource {
  constructor(data) {
    this.transport = data.transport
    this.endPoint = `/api/movies/${data.id}`
  }

  get() {
    return this.transport.get(this.endPoint)
  }
}
