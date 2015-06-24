//= require active_admin/base
//= require froala_editor.min.js
//= require plugins/block_styles.min.js
//= require plugins/colors.min.js
//= require plugins/media_manager.min.js
//= require plugins/tables.min.js
//= require plugins/video.min.js
//= require plugins/font_family.min.js
//= require plugins/font_size.min.js
//= require plugins/file_upload.min.js
//= require plugins/lists.min.js
//= require plugins/char_counter.min.js

$(function() {
  $('.editable').editable({
    inlineMode: false,
    height: 350
  });

  $('.editable-small').editable({
    inlineMode: false,
    height: 200
  });

  $('body').on('change', '.preview', function() {
    displayPreviewFromURL(this);
  });
});

function displayPreviewFromURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function(e) {
      if ( $(input).hasClass('preview-banner') ) {
        var img = $('<img class="site-banner">').attr('src', e.target.result);
        $('.banner-container').html(img);
      } else {
        $(input).next('.inline-hints').find('img').attr('src', e.target.result);
      }
    }

    reader.readAsDataURL(input.files[0]);
  }
}
