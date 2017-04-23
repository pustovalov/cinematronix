export default class MovieResource {
  constructor(transport) {
    this.transport = transport
    this.endPoint = '/movies'
  }

  get() {
    return this.transport.get(this.endPoint)
  }
}
