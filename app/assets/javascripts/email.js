var ready = function(){

  $('.regisrterbtn').click(function (e) {
      e.preventDefault();

      if (!$('#user_name').val() || !$('#user_age').val() || !$('#user_email').val() || !$('#user_password').val() ) {
        //Show validation message
      }
      else {
        $('.signup').hide();
        $('#my-modal').show();
      }
  });
}
$(document).ready(ready);
$(document).on("page:load", ready);
