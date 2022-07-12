function change1(element){
  let elementClass = element.classList;
  if (elementClass.contains('box1change')) {
    element.classList.remove('box1change');
  } else {
    element.classList.add('box1change');
  }
}

function change2(element){
  let elementClass = element.classList;
  if (elementClass.contains('box2change')) {
    element.classList.remove('box2change');
  } else {
    element.classList.add('box2change');
  }
}

function change3(element){
  let elementClass = element.classList;
  if (elementClass.contains('box3change')) {
    element.classList.remove('box3change');
  } else {
    element.classList.add('box3change');
  }
}

function change4(element){
  let elementClass = element.classList;
  if (elementClass.contains('box4change')) {
    element.classList.remove('box4change');
  } else {
    element.classList.add('box4change');
  }
}

let box1 = document.querySelector('.box1');
box1.addEventListener('click', function(){
  change1(box1);
});
let box2 = document.querySelector('.box2');
box2.addEventListener('click', function(){
  change2(box2);
});
let box3 = document.querySelector('.box3');
box3.addEventListener('click', function(){
  change3(box3);
});
let box4 = document.querySelector('.box4');
box4.addEventListener('click', function(){
  change4(box4);
});
let input = document.querySelector('.input');
input.addEventListener('keydown', function(){
  console.log("hi");
});