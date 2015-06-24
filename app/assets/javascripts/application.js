// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

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
//= require_tree .

$(function() {
  $('.editable').editable({
    inlineMode: false
  });
});


$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});


$(".background").lazyload({
      effect : "fadeIn"
  });