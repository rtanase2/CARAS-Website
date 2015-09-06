$(document).ready(function(){
  if($('body').width() < 638){
      $('iframe').height(0);
    }

  $(window).resize(function() {
    if($('body').width() < 638){
      $('iframe').height(0);
    }
    else{
      $('iframe').height(300);
    }
  });
});
