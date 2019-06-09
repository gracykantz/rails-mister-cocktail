const navbar = () => {
$(document).scroll(function() {
  var documentScrollTop = $(document).scrollTop();
  if (documentScrollTop > $('#header').height()) {
    $('#navbar').addClass('fixedattop');
    var shiftContent = $('#navbar').height();
    $('#content').css('margin-top', shiftContent + 'px');
  }
  else if ($('#navbar').hasClass('fixedattop')) {
    $('#navbar').removeClass('fixedattop');
    $('#content').css('margin-top', '0px');
  }
});
}

export { navbar };
