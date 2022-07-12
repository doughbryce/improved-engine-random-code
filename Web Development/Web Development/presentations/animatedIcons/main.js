let a = document.getElementById("countdown");

function countdown(){
  a.innerHTML = "&#xf0ab;";
  let num = 999;
  for(let i = 0; i < num ; i++){
    setTimeout(function(){
      a.innerHTML = num - i;
    },i*1000);
  }
  // setTimeout(function(){
  //   a.innerHTML = "&#xf0a8;";
  //   }
  //   ,1000);
  //  setTimeout(function(){
  //   a.innerHTML = "&#xf01a;";
  //  },2000);
   //  setTimeout(function(){
   //  a.innerHTML = "3";
   //  }
   //  ,3000);
   // setTimeout(function(){
   //  a.innerHTML = "2";
   // },4000);
   //  setTimeout(function(){
   //  a.innerHTML = "1";
   //  }
   //  ,5000);
   // setTimeout(function(){
   //  a.innerHTML = "0";
   // },6000);
}


countdown();

















































// setTimeout(function(){
    //   timmer.html(10)
    // },1000);
    // setTimeout(function(){
    //   timmer.html(9)
    // },2000);
    // setTimeout(function(){
    //   timmer.html(8);
    // },3000);
    // setTimeout(function(){
    //   timmer.innerHTML = "7"
    // },4000);
    // setTimeout(function(){
    //   timmer.innerHTML = "6"
    // },5000);
    // setTimeout(function(){
    //   timmer.innerHTML = "5"
    // },6000);
    // setTimeout(function(){
    //   timmer.innerHTML = "4"
    // },7000);
    // setTimeout(function(){
    //   timmer.innerHTML = "3"
    // },8000);
    // setTimeout(function(){
    //   timmer.innerHTML = "2"
    // },9000);
    // setTimeout(function(){
    //   timmer.innerHTML = "1"
    // },10000);








// function Belling(){
//   let a = document.getElementById("belling");
//   a.innerHTML = "&#xf0f3;";
//   setTimeout(function(){
//     a.innerHTML = "&#xf1f6;";
//   },1000);
//   setTimeout(function () {
//     a.innerHTML = "&#xf0a2;";
//   }, 2000);
//   setTimeout(function () {
//     a.innerHTML = "&#xf1f7;";
//   }, 3000);}

//   Belling();
//   setInterval(Belling,4000);
//   chargeBattery();
//   setInterval(chargeBattery,5000);
  //setTimeout(function, milliseconds)
  //it Executes a function,when it hits the time market
  //http://fontawesome.io/cheatsheet/
  //setInterval is the same as setTimeout()
  //But it repeats the execution of the function continuously


