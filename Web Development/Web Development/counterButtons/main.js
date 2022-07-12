// Functions
function adjust_points(element, int){
  let value = parseInt(element.innerHTML) + int;

  if (value < 0) {
    value = 0;
  };
  element.innerHTML = value;
}


// Driver Code
let plus = document.getElementById('plus');
let minus = document.getElementById('minus');
let count = document.getElementById('count');

plus.addEventListener("click", function () {
  adjust_points(count, 1);
});

minus.addEventListener("click", function () {
  adjust_points(count, -1);
});