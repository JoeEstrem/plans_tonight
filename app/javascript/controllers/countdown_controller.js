import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="countdown"
export default class extends Controller {
  static targets = ["countdown"];

  connect() {
    const deadlineValue = this.data.get("deadlineValue");
    console.log("Raw deadline value:", deadlineValue);

    // Parse and log the date
    const deadline = new Date(deadlineValue);
    console.log("Parsed deadline date:", deadline);

    if (deadline) {
      this.startCountdown(deadline);
    } else {
      this.countdownTarget.textContent = "No deadline set";
    }
  }

  startCountdown(deadline) {
    const countdownTarget = this.countdownTarget;

    const updateCountdown = () => {
      const now = new Date();
      const timeRemaining = deadline - now;

      if (timeRemaining <= 0) {
        countdownTarget.textContent = "Expired";
        return;
      }

      // Calculate the difference in years, months, and days
      const totalDays = Math.floor(timeRemaining / (1000 * 60 * 60 * 24));
      const years = Math.floor(totalDays / 365);
      const months = Math.floor((totalDays % 365) / 30);
      const days = totalDays % 30;

      // Calculate hours, minutes, and seconds
      const hours = Math.floor((timeRemaining % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      const minutes = Math.floor((timeRemaining % (1000 * 60 * 60)) / (1000 * 60));
      const seconds = Math.floor((timeRemaining % (1000 * 60)) / 1000);

      // Build the countdown string conditionally
      let countdownString = "";
      if (years > 0) countdownString += `${years}y `;
      if (months > 0) countdownString += `${months}m `;
      if (days > 0) countdownString += `${days}d `;
      if (years === 0 && months === 0 && days === 0) {
        // If there are no years, months, or days, still show the time
        countdownString += `${hours}h ${minutes}m ${seconds}s`;
      } else {
        // If there are years, months, or days, show them with time
        countdownString += `${hours}h ${minutes}m ${seconds}s`;
      }

      countdownTarget.textContent = countdownString.trim();
    };

    updateCountdown();
    setInterval(updateCountdown, 1000);
  }
}
