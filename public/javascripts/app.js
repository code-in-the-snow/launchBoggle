var i = 1,
  intervalGo;

var x = 0,
  intervalCount;

$("#timer").on("click", (function (e) {
    e.preventDefault();
    var $this = $(this);
    var inMotion = $this.hasClass("active")

    if (inMotion == true) {
      intervalStop();
      clearInterval(intervalCount);
      // countStop();
      $this.removeClass("active");
    } else {

      intervalCount = setInterval(function () {
        countDown(x++);
      }, 1000);
      $this.addClass("active");
      intervalGo = setInterval(function () {
        spin($this,i++);
      }, 250);
    }
 }));

spin = function(image, i) {
  image.css({
    '-webkit-transform':'rotate(' + i*30 + 'deg)',
    '-moz-transform':'rotate(' + i*30 + 'deg)',
    '-o-transform':'rotate(' + i*30 + 'deg)',
    '-ms-transform':'rotate(' + i*30 + 'deg)',
    'transform':'rotate(' + i*30 + 'deg)'
  });
};

countDown = function counter(x) {
    var total = 179 - x
    var mins = Math.floor(total / 60)
    mins = checkTime(mins)
    var secs = Math.floor(total % 60)
    secs = checkTime(secs)
    if (x < 180) {
      document.getElementById("counter").innerHTML = mins+":"+secs;
    } else {
      document.getElementById("counter").innerHTML = "00:00";
    }
};

function checkTime(i) {
    if (i<10) { i = "0" + i };
    return i;
}

function intervalStop() {
  clearInterval(intervalGo);
}
