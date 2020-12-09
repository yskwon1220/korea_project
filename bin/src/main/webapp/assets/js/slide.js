var slideCount = $(".slideImg").length;
var currentIndex = 0;
var slidePosition;

setInterval(function(){
    if(currentIndex < slideCount - 1){
        currentIndex++;
    } else {
        currentIndex = 0;
    }
    slidePosition = currentIndex * (-1200)+"px";
    $(".slideList").animate({ left: slidePosition},400);
},3000);