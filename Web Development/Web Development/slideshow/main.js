{
  "use strict"
  $(document).ready(function(){

    let slide1 = $(".slide1");
    let slide2 = $(".slide2");
    let slide3 = $(".slide3");
    let slide4 = $(".slide4");

    slide1.show();
    slide2.hide();
    slide3.hide();
    slide4.hide();

    let bullet1 = $(".bullet1");
    let bullet2 = $(".bullet2");
    let bullet3 = $(".bullet3");
    let bullet4 = $(".bullet4");

    bullet2.addClass("faded");
    bullet3.addClass("faded");
    bullet4.addClass("faded");

    bullet1.click(function(){
      slide1.show().addClass("slideIn");
      slide2.hide().removeClass("slideIn");
      slide3.hide().removeClass("slideIn");
      slide4.hide().removeClass("slideIn");
      bullet1.removeClass("faded");
      bullet2.addClass("faded");
      bullet3.addClass("faded");
      bullet4.addClass("faded");
    });

    bullet2.click(function(){
      slide1.hide().removeClass("slideIn");
      slide2.show().addClass("slideIn");
      slide3.hide().removeClass("slideIn");
      slide4.hide().removeClass("slideIn");
      bullet1.addClass("faded");
      bullet2.removeClass("faded");
      bullet3.addClass("faded");
      bullet4.addClass("faded");
    });

    bullet3.click(function(){
      slide1.hide().removeClass("slideIn");
      slide2.hide().removeClass("slideIn");
      slide3.show().addClass("slideIn");
      slide4.hide().removeClass("slideIn");
      bullet1.addClass("faded");
      bullet2.addClass("faded");
      bullet3.removeClass("faded");
      bullet4.addClass("faded");
    });

    bullet4.click(function(){
      slide1.hide().removeClass("slideIn");
      slide2.hide().removeClass("slideIn");
      slide3.hide().removeClass("slideIn");
      slide4.show().addClass("slideIn");
      bullet1.addClass("faded");
      bullet2.addClass("faded");
      bullet3.addClass("faded");
      bullet4.removeClass("faded");
    });

  })
}