document.addEventListener("DOMContentLoaded", function(){
  let animate = localStorage.getItem('animate')
  if (animate === null) {
    localStorage.setItem('animate', 'true');
    animate = 'true';
  }
  setAnimation(animate)
});

function setAnimation(animate) {
  let toggleButton = document.getElementById("toggleButton");
  if (animate === 'true') {
    document.body.style.removeProperty('background-image');
    toggleButton.innerHTML = "Disable Animation";
  } else {
    document.body.style.backgroundImage="url('/assets/img/bg_slow_still.webp')";
    toggleButton.innerHTML = "Enable Animation";
  }
}

function toggleAnimation() {
  let animate = localStorage.getItem('animate');
  if (animate === 'true') {
    localStorage.setItem('animate', 'false');
    setAnimation('false');
  } else {
    localStorage.setItem('animate', 'true');
    setAnimation('true');
  }
}

