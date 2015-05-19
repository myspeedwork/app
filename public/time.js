var countTicks = 0;
var firstTimeFlag = true;

var dayNames = new Array('Sunday',
                         'Monday', 
                         'Tuesday', 
                         'Wednesday', 
                         'Thursday', 
                         'Friday', 
                         'Saturday');
var Monthnames = new Array('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');

var localTime = +Date.now();
var timeDiff  = serverTime - localTime;
var localHour,localMinute;

var timer = function() {

    var realtime = +Date.now() + timeDiff;

    var Digital = new Date(realtime);

    if($('#hours').text() != "") {
        localHour = $('#hours').text();
        localMinute = $('#minutes').text();
    }

    // Getting the system offset and changing its sign to get gmt value of offset 
    var sysoffset =  -(Digital.getTimezoneOffset()/60);

    if (localHour && sysoffset != localHour) {
        Digital.setHours(Digital.getUTCHours()+eval(localHour));
        Digital.setMinutes(Digital.getUTCMinutes()+eval(localMinute));
    }

    var day       = Digital.getDate();
    var month     = Digital.getMonth();
    var year      = Digital.getFullYear();
    var dayinWeek = Digital.getDay();

    var hours     = Digital.getHours();
    var minutes   = Digital.getMinutes();
    var seconds   = Digital.getSeconds();
    var ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours % 12;
    hours = hours ? hours : 12;

    if (day <= 9) { day = "0" + day; }

    if (minutes <= 9) { minutes = "0" + minutes; }
    if (seconds <= 9) { seconds = "0" + seconds; }
    if (hours <= 9) { hours = "0" + hours; }

    var clock = dayNames[dayinWeek] + ', ' + day + ' ' + Monthnames[month] + ' ' + year + ', ' + hours;

    if (countTicks == 0) {
        clock = clock+ ':';
        countTicks = 1;
    } else {
        clock = clock+ ' ';
        countTicks = 0;
    }

    clock = clock + minutes + ' '+ampm;

    var datumObj = document.getElementById('LocalTime');
    datumObj.innerHTML = clock;
}

timer();


setInterval(function() {
    timer();
},1000);