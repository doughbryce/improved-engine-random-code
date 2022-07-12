function toggleStyle(elements){
  for (var i = 0; i < elements.length; i++) {
    var element = elements[i];
    var className = element.className;
    if(className === "style1"){
      element.className = "style2";
    } else {
      element.className = "style1";
    }
  }
}

function changeText(element, text){
  element.innerHTML = text;
}

function toggleButtonText(button){
  if(button.className === "style1"){
    changeText(button, "Style 2");
    button.className = "style2";
  } else {
    changeText(button, "Style 1");
    button.className = "style1";
  }
}

// Driver code
var button = document.querySelector('button');
button.addEventListener("click", function(){
  var paragraphs = document.querySelectorAll('p');
  toggleStyle(paragraphs);
  toggleButtonText(this)
})