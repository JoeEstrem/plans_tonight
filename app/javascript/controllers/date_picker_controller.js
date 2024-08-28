// import "flatpickr/dist/themes/material_blue.css";
import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
// import "flatpickr/dist/flatpickr.min.css";

export default class extends Controller {
  static targets = ["dateTime", "deadline"];

  connect() {
    const getJapanTime = () => {
      const now = new Date();
      const utcOffset = now.getTimezoneOffset() * 60000;
      const japanOffset = 9 * 60 * 60000;
      return new Date(now.getTime() + utcOffset + japanOffset);
    };

    const japanTime = getJapanTime();

    // Initialize flatpickr for dateTime
    flatpickr(this.dateTimeTarget, {
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      altInput: true,
      altFormat: "F j, Y - H:i",
      time_24hr: true,
      minDate: japanTime,
      defaultDate: japanTime,
      enableSeconds: false,
      minuteIncrement: 15,
      onChange: () => this.validateDeadline() // Validate on dateTime change
    });

    // Initialize flatpickr for deadline
    flatpickr(this.deadlineTarget, {
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      altInput: true,
      altFormat: "F j, Y - H:i",
      time_24hr: true,
      enableSeconds: false,
      minDate: japanTime,
      defaultDate: japanTime,
      onChange: () => this.validateDeadline() // Validate on deadline change
    });
  }

  validateDeadline() {
    const dateTime = new Date(this.dateTimeTarget.value);
    const deadline = new Date(this.deadlineTarget.value);

    if (deadline >= dateTime) {
      alert("Deadline must be before the Date & Time.");
      this.deadlineTarget.value = ""; // Clear the deadline input
      this.deadlineTarget._flatpickr.clear(); // Clear the flatpickr instance
    }
  }
}
