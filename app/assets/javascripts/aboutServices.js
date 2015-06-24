$('.card').click(function() {
  if (!$(this).parent().hasClass('active')) {
    $('.christophe_hidden, .alex_hidden').addClass('hidden')
    $('.active').removeClass('active')
    $(this).parent().addClass('active').prependTo('.card-container')
    $('body').scrollTop(0)
  }
})



$('.video_selector li').click(function(){
  $('.activeVideo').removeClass('activeVideo')
  $(this).addClass('activeVideo')
  var url = "http://www.youtube.com/embed/" + $(this).data('url') + "?hd=1&rel=0&autohide=1&showinfo=0"
  $('#conference iframe').attr('src', url)
})

$('#christophe').click(function(){
  $('.christophe_hidden').removeClass('hidden')
  if (!$('.alex_hidden').hasClass('hidden')) {
    $('.alex_hidden').addClass('hidden')
  }
})

$('#alex').click(function(){
  $('.alex_hidden').removeClass('hidden')
  if (!$('.christophe_hidden').hasClass('hidden')) {
    $('.christophe_hidden').addClass('hidden')
  }
})