{
  "use strict"
  $(document).ready(function(){
    let previousButton = $("previous");
    let nextButton = $("next");



    previousButton.click(function(){
      previous();
    });
    nextButton.click(function(){
      next();
    });

    let slide1 = $("#slide1");
    slide1.click(function(){
      changeslide(1);
    })

    let slide2 = $("#slide2");
    slide2.click(function(){
      changeslide(2);
    })

    let slide3 = $("#slide3");
    slide3.click(function(){
      changeslide(3);
    })

    let slide4 = $("#slide4");
    slide4.click(function(){
      changeslide(4);
    })

    let index = 1;
    showslide();

    function previous(){
      index -= 1;
      showslide();
    }

    function next(){
      index += 1;
      showslide();
    }

    function changeslide(number){
      index = number;
      showslide();
    }

    function showslide(){
      let slides = $(".slides");
      let dots = $(".dot");

      if (index > slides.length) {
        index = 1;
      }
      if (index < 1) {
        index = slides.length;
      }
      slides.hide();
      dots.removeClass("active");
      slides.eq(index - 1).show();
      dots.eq(index - 1).addClass("active");
    }
  })
}