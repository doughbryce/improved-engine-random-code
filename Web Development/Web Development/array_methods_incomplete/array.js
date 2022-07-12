// Num Sorter-----------------
const square = (num) =>{
  return num * num;
}

const numSorter = (array) => {
  return array.map(square);
}
console.log(numSorter([1, 2, 3, 4]));
// Find num--------------------------
const divisible = (num) => {
  if (num % 7 === 0 && num % 9 === 0) {
    return num;
  }
}
const getNum = (array) => {
  let index = 0;
  while (index < array.length) {
    if (array[index] != "undefined") {
      return array[index];
    }
    index += 1;
  }
}
const findNum = (array) => {
  const newArray = array.map(divisible);
  return getNum(newArray);
}
console.log(findNum([1, 2, 3, 63, 126]));
// Keep large----------------------------
const keepLarge = (array) => {
  return array.map(x => {
    if (x > 100) {
    return x;
  }
});
}
console.log(keepLarge([1, 5, 13, 123]));
// Remove num----------------------------
const removeNum = (array, num) => {
  return array.map(x => {
    if (x === num) {
      array.splice(x);
    }
  });
}
console.log(removeNum([1, 2, 3, 4], 3));
