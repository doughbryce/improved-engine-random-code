function map(array, callback){
  var result = [];
  for (var i = 0; i < array.length; i++) {
    result.push(callback(array[i]));
  }
  return result;
}

function double(num){
  return num * 2;
}

var myArray = [2, 3, 4];

var newArray = map(myArray, double)

console.log([2, 3, 4]);
console.log(newArray);
// ============================================

// write a function that takes an array and a callback function
var nums = [1, 2, 3, 4, 5];

function odd(array){
  var result = [];
  for (var i = 0; i <= array.length; i++) {
    if (i%2 === 1) {
      result.push(i);
    }
  }
  return result;
}

function select(array, callback){
  return callback(array);
}

console.log(select(nums, odd));
// =============================================

var nums = [2, 3, 4, 5, 6, 7, 8, 9];

function divisible(num){
  return num % 3 === 0 && num % 2 === 0;
}

function detect(array, callback){
  for (var i = 0; i <= array.length; i++) {
   if (callback(array[i]) === true) {
      return array[i];
   }
  }
}


console.log(detect(nums, divisible));

detect(["ate", "backpack", "car"], function(word){
  return word.length > 4;
})