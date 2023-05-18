window.addEventListener("message", function (e) {
  if (e.data.action == "showui") {
    var killer = e.data.killer;
    var victim = e.data.victim;
    var weapon = e.data.weapon;
    killfeed(killer, victim, weapon.toLowerCase());
  }
});

function killfeed(killer, victim, weapon) {
  var number = Math.floor(Math.random() * 1000 + 1);
  var killfeed = `
  <div class="killfeed-container-${number} py-1 px-3 animate__animated animate__fadeInRightBig" style="background-color: rgba(0, 255, 255, 0.259);border-radius: 10px;">
  <span class="killer mx-1">${killer}</span>
  <img src="./weapons/${weapon}.png" onerror="this.src='./weapons/pistol.png';" alt="" />
  <span class="victim mx-1">${victim}</span>
  </div>`;
  $("#kill-feed").append(killfeed);
  setTimeout(function () {
    $(`.killfeed-container-${number}`)
      .removeClass("animate__fadeInRightBig")
      .addClass("animate__fadeOutRightBig");
    $(`.killfeed-container-${number}`).fadeOut("slow");
  }, 5000);
}
