var button = document.getElementById('submit');
button.addEventListener('click', function(){
  var input = document.getElementById("my-input");
  var newParagraph = document.createElement("p");
  newParagraph.innerHTML = input.value;
  var section = document.getElementById("main");
  var deleteButton = document.createElement("button");
  deleteButton.innerHTML = "delete";
  newParagraph.append(deleteButton);
  section.append(newParagraph);
})
