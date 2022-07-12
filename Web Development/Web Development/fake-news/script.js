function changeTitle(){
  var title = document.querySelectorAll('h1');
  for (var i = 0; i < title.length; i++) {
    title[i].innerHTML = "goats are like mushrooms if you shoot a duck im scared of toasters";
  }
}

function changeImages(){
  var image = document.querySelectorAll('img')
  for (var i = 0; i < image.length; i++) {
    image[i].src = "https://i.ytimg.com/vi/mRf3-JkwqfU/hqdefault.jpg";
  }
}

function changeArticles(){
  var article = document.querySelectorAll('p')
  for (var i = 0; i < article.length; i++) {
    article[i].innerHTML = article[i].innerHTML.replace(/[a-z]/, "Ah!!! It's a toaster!!")
  }
}

addEventListener("click", function(){
  style.color = "red";
})

addEventListener("mouseout", function(){
  style.color = "yellow";
})

changeTitle();
changeImages();
changeArticles();