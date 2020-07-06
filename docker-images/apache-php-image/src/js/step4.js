$(document).ready(function () {

    $("#btmeteo").click(function () {

        // console.log("Loading meteo...");

        $.getJSON("/api/meteo/", function (arr) {

            if (arr.length == 0) {
                $("#divmeteo").prepend("No meteo content available :( ");
            }

            var max = 2;
            max = (max <= arr.length ? max : arr.length);

            for (let i = 0; i < max; i++) {
                var e = arr[i];
                $("#divmeteo").prepend("<li class=\"m-entry list-group-item\"><b>" + e.location.name + "</b>, " + e.location.country + " : " + e.temperature + "°C</li>");
            }
        });

    });

    setInterval(function () {

        // console.log("Loading meteo for timer...");


        $.getJSON("/api/meteo/", function (arr) {

            if (arr.length != 0) {
                var e = arr[0];
                $("#mtimer").html("<h1 id=\"mtimer\" class=\"masthead-heading mb-0\">" + e.location.country + " : " + e.temperature + "°C" + "</h1>");

            } else {
                $("#mtimer").val("No meteo content available :( ");
            }
        });

    }, 2000);

});