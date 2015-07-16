function startTime() {
    var today=new Date();
    var h=today.getHours();
    var m=today.getMinutes();
    var s=today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById('txt').innerHTML = h+":"+m+":"+s;
    var t = setTimeout(function(){startTime()},500);
}

function checkTime(i) {
    if (i<10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}
</script>
</head>

<body onload="startTime()">

<div id="txt"></div>

###############################

intervalClock = setInterval(function () {
  clock(time++);
}, 1000);

function checkTime(i) {
    if (i<10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}

clock = function startClock(time) {
  var mins = Math.floor(time % 60);
  var secs = Math.floor(time / 60);
  mins = checkTime(mins);
  secs = checkTime(secs);
  document.getElementById('time-display').HTML = m + ":" + s;
};
