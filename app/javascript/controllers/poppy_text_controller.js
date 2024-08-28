import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="poppy-text"
export default class extends Controller {
  static targets = ["text"]

  connect() {
    if (this.hasTextTarget) {
      // this.colors = ['#ff5e57', '#ff7f50', '#ffb142', '#34ace0', '#706fd3'];
      // this.colors = ['#ff4500', '#32cd32', '#1e90ff', '#ff1493', '#ff6347'];
      this.colors = ['#ff4500', '#333333', '#ff0000', '#ff1493', '#0000ff']; // Black, DarkGray, Red, Green, Blue

      this.colorIndex = 0;

      this.startColorChange();
    }
  }

  startColorChange() {
    this.interval = setInterval(() => {
      this.textTarget.style.color = this.colors[this.colorIndex];
      this.colorIndex = (this.colorIndex + 1) % this.colors.length;
    }, 1000);
  }

  disconnect() {
    // Clean up the interval when the controller is disconnected
    clearInterval(this.interval);
  }
}
