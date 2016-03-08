var ready = function (){
  $('.search').click(function(e){
    e.preventDefault();

    $('.dash').hide();
  });

}
$(document).ready(ready);
$(document).on("page:load", ready);
