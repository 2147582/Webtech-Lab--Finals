var div = $('#login-modal');  // container for the content

$.get('../login-modal.html')                      // get the content
 .success(function(resp) {      // on success
   $(div)
      .html(resp)               // populate the div
      .dialog({ modal: true }); // and turn it into a dialog
 });