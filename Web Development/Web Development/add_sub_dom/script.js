// create element
var newP = document.createElement("p");
newP.className = "new";
newP.innerHTML = "This is a new paragraph"

// create new h1
var newH1 = document.createElement('h1');
newH1.className = "title";
newH1.innerHTML = "New text, who dis?";

// insert into DOM
var main = document.getElementById('main');
main.append(newP);
main.insertBefore(newH1, newP);

// remove P's from DOM
newH1.className = "hidden-title";