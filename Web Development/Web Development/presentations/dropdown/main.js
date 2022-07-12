$(document).ready(function(){

  let button = document.querySelector('button');
  let content = document.getElementById('myDropdown');
  let drop = document.getElementById('dropdown');

  // button.addEventListener("click", function(){
  //   content.classList.toggle("show");
  // })

  drop.addEventListener("mouseover", function(){
    content.classList.add("show");
  })

  drop.addEventListener("mouseout", function(){
    content.classList.remove("show");
  })

})