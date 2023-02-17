document.addEventListener("DOMContentLoaded", function(){
  let animate = localStorage.getItem('animate')
  if (animate === null) {localStorage.setItem('animate','false'); animate = 'false';}
  setAnimation(animate)
});

function setAnimation(animate) {
  let toggleButton = document.getElementById("toggleButton");
  if (animate === 'true') {
    document.body.style.removeProperty('background-image');
    var styles = `
    @media not print {
    body {
        background: linear-gradient(rgba(0, 0, 0, 0.6),rgba(0, 0, 0, 0.6)),url("/assets/img/hd_bg.webp");
        background-size: cover;
        background-attachment: fixed;
        background-position: center center;
        background-color: var(--bg);
    }
}
    `
    var styleSheet = document.createElement("style")
    styleSheet.innerHTML = styles;
    styleSheet.setAttribute("id","styling");
    document.head.appendChild(styleSheet)
    toggleButton.innerHTML = "BG: ON";
  } else {
    document.body.style.backgroundImage="none";
    const element = document.getElementById("styling");element.remove();
    toggleButton.innerHTML = "BG: OFF";
  }
}
function toggleAnimation() {
  let animate = localStorage.getItem('animate');
  if (animate === 'true') {
    localStorage.setItem('animate', 'false');setAnimation('false');
  } else {
    localStorage.setItem('animate', 'true');setAnimation('true');
  }
}
