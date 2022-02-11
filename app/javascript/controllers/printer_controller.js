import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  sendDelete() {
    document.getElementById("printer-output").textContent =
      `Hello`;
      console.log("Hello, Stimulus!")
  }

}
