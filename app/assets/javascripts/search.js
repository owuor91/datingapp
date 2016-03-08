var ready = function (){
  $('.search').click(function(e){
    e.preventDefault();

    $('.dash').hide();

    $('.searchbar').show();
  });

  $('.searchbtn').click(function(e){
    e.preventDefault();

    var search_term = $('.search-term').val();

    $('.searchbar').hide();

    $('.dash').show();

    $('.dash > .container-fluid > .row').hide();

    $('.result-title').text('Showing results for ' + search_term );
  });



}
$(document).ready(ready);
$(document).on("page:load", ready);
