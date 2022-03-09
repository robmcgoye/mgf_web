$(document).ready (function() {
  var myCarousel = document.getElementById('photoGallery')
  if (myCarousel !== null) {

    var caption = $('div.carousel-item:nth-child(1) .carousel-caption');
    $('.new-caption-area').html(caption.html());
    caption.css('display', 'none');

    myCarousel.addEventListener('slide.bs.carousel', function (evt) {
      var caption = $('div.carousel-item:nth-child(' + ($(evt.relatedTarget).index() + 1) + ') .carousel-caption');
      $('.new-caption-area').html(caption.html());
      caption.css('display', 'none');
    });
  }
});