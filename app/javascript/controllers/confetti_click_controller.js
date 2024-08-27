import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="confetti-click"
export default class extends Controller {
  static targets = ["click"]

  connect() {
    console.log("connected")
    // const defaults = {
    //   spread: 360,
    //   ticks: 100,
    //   gravity: 0,
    //   decay: 0.94,
    //   startVelocity: 30,
    // };

    // function shoot() {
    //   confetti({
    //     ...defaults,
    //     particleCount: 30,
    //     scalar: 1.2,
    //     shapes: ["circle", "square"],
    //     colors: ["#a864fd", "#29cdff", "#78ff44", "#ff718d", "#fdff6a"],
    //   });

    //   confetti({
    //     ...defaults,
    //     particleCount: 20,
    //     scalar: 2,
    //     shapes: ["emoji"],
    //     shapeOptions: {
    //       emoji: {
    //         value: ["🍆", "💦"],
    //       },
    //     },
    //   });
    // }

    // setTimeout(shoot, 0);
    // setTimeout(shoot, 100);
    // setTimeout(shoot, 200);

  const duration = 15 * 1000,
  animationEnd = Date.now() + duration,
  defaults = { startVelocity: 30, spread: 360, ticks: 60, zIndex: 0 };

  function randomInRange(min, max) {
  return Math.random() * (max - min) + min;
  }

  const interval = setInterval(function() {
  const timeLeft = animationEnd - Date.now();

    if (timeLeft <= 0) {
      return clearInterval(interval);
    }

    const particleCount = 50 * (timeLeft / duration);
    console.log("shooting confetti")
    // since particles fall down, start a bit higher than random
    confetti(
      Object.assign({}, defaults, {
        particleCount,
        origin: { x: randomInRange(0.1, 0.3), y: Math.random() - 0.2 },
      })
    );

    confetti(
      Object.assign({}, defaults, {
        particleCount,
        origin: { x: randomInRange(0.7, 0.9), y: Math.random() - 0.2 },
      })
    );
  }, 250);
  }

}
