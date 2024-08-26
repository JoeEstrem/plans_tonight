// import "flatpickr/dist/themes/material_blue.css";
import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
// import "flatpickr/dist/flatpickr.min.css";

export default class extends Controller {
  connect() {
    const getJapanTime = () => {
      const now = new Date();
      const utcOffset = now.getTimezoneOffset() * 60000;
      const japanOffset = 9 * 60 * 60000;
      return new Date(now.getTime() + utcOffset + japanOffset);
    };

    const japanTime = getJapanTime();

    flatpickr(this.element, {
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      altInput: true,
      altFormat: "F j, Y - H:i",
      time_24hr: true,
      minDate: japanTime,
      defaultDate: japanTime,
      enableSeconds: false
    });
  }
}
