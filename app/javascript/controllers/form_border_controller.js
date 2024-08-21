import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-border"
export default class extends Controller {
  static targets = ["card"]
  highlight() {
    console.log("clciked!")
  }
}
