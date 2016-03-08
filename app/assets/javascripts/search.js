var ready = function (){
  $('.search').click(function(e){
    e.preventDefault();

    $('.dash').hide();

    $('.searchbar').show();
  });

  $('.searchbtn').click(function(e){
    e.preventDefault();

    $('.searchbar').hide();

    $('.dash').show();

    $('.dash > .container-fluid > .row').hide();

    $('.result-title').text('Showing results for');
  });



}
$(document).ready(ready);
$(document).on("page:load", ready);
