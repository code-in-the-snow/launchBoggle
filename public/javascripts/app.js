var i = 1,
    intervalGo;

$("#timer").on("click", (function (e) {
    e.preventDefault();
    var $this = $(this);
    var inMotion = $this.hasClass("active")

    if (inMotion == true) {
      intervalStop()
      $this.removeClass("active");
    } else {
      $this.addClass("activ e");
      intervalGo = setInterval(function () {
        spin($this,i++);
      }, 250);
    }
 }));

spin = function spinTimer(image, i) {
  image.css({
    '-webkit-transform':'rotate(' + i*30 + 'deg)',
    '-moz-transform':'rotate(' + i*30 + 'deg)',
    '-o-transform':'rotate(' + i*30 + 'deg)',
    '-ms-transform':'rotate(' + i*30 + 'deg)',
    'transform':'rotate(' + i*30 + 'deg)'
  });
};

function intervalStop() {
  clearInterval(intervalGo);
}
