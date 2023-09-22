<!DOCTYPE html>
<html>
<head>
    <title>Weather Calendar</title>
    <link href='fullcalendar/main.css' rel='stylesheet' />
    <script src='fullcalendar/main.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

    <div id="calendar"></div>

    <script>
        $(document).ready(function() {
            $.getJSON("files/daily_fluxtower1.json", function(data) {
                var events = [];
                data.forEach(function(day) {
                    events.push({
                        title: day.Description,
                        start: day.DATE,
                        extendedProps: {
                            minTemp: day['Min.Temp'],
                            maxTemp: day['Max.Temp'],
                            description: day.Description
                        }
                    });
                });

                var calendarEl = document.getElementById('calendar');
                var calendar = new FullCalendar.Calendar(calendarEl, {
                    initialView: 'dayGridMonth',
                    events: events,
                    eventMouseEnter: function(info) {
                        // Create a tooltip showing minTemp, maxTemp, and use description to choose an icon
                    }
                });

                calendar.render();
            });
        });
    </script>

</body>
</html>

