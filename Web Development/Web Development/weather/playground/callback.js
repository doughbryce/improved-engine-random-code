const add = (x, y) => x+y;

// const result = add(1, 2)
// console.log("My result is: " + result);


const addCallback = (x, y, callback) => {
  callback(x+y);
}

addCallback(1, 2, (result) =>{
  console.log("My result is: " + result);
})
