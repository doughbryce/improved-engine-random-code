let countdownDate = new Date("Dec 4, 2017 14:13:50").getTime();

let x = setInterval(function(){
  let now = new Date().getTime();
  let distance = countdownDate - now;
  let days = Math.floor(distance%(1000*60*60*24));
  let hours = Math.floor(distance%(1000*60*60));
  let minutes = Math.floor(distance%(1000*60));
  let seconds = Math.floor(distance%(1000));

  let countdown = document.getElementById('demo')
  countdown.innerHTML = days + "days" + hours + "hours" + minutes + "minutes" + seconds + "seconds";

  if(distance < 0) {
    clearInterval(x);
    countdown.innerHTML = "Times Up!"
  }
}, 0);