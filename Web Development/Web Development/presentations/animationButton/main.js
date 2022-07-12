{
  "use script"
  $(document).ready(function(){
    let button1 = $("#button1");
    button1.click(function(){
      button1.addClass("buttonClicked");
    });
    let circle2 = $("#circle2");
    circle2.animationend(function(){
      button1.removeClass("buttonClicked");
    });
  });
}