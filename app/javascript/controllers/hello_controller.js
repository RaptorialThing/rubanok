import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
  sendDelete() {
    this.outputTarget.textContent =
      `Hello`
  }
}
