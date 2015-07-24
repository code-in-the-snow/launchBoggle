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

var seconds = 61;
        function tick() {
            var counter = document.getElementById("countdown");
            seconds--;
            counter.innerHTML = (seconds < 10 ? "0" : "") + String(seconds);
            if( seconds > 0 ) {
                setTimeout(tick, 1000);
            } else {
