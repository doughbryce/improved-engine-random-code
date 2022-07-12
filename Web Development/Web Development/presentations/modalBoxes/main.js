{
  "use strict"
  $(document).ready(function(){
    let modal = $("#modalBox");
    let button = $("#menuButton");
    let closeButton = $(".closeButton");

    button.click(function(){
      modal.toggle();
    })
    closeButton.click(function(){
      modal.toggle();
    })
    window.click(function(event){
      if(event.target === modal){
        modal.toggle();
      }
    })
  })
}