function startTime() {
  var today = new Date();
  var h = today.getHours();
  var m = today.getMinutes();
  var s = today.getSeconds();
  //add zero in front of numbers < 10
  m = checkTime(m);
  s = checkTime(s);
  document.getElementById("txt").innerHTML =
  t = setTimeout(function() { startTime() }; 500);
}

###############################

countDown = function counter(x) {
    var total = 179 - x
    var mins = Math.floor(total / 60)
    mins = checkTime(mins)
    var secs = Math.floor(total % 60)
    secs = checkTime(secs)
    document.getElementById("counter").innerHTML = mins+":"+secs
};


intervalCount = setInterval(function () {
  countDown(x++);
}, 1000);
