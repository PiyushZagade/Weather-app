<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather App</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <div class="card">
        <div class="search"> 
        <form action="MyServlet" method="post">
            <input type="text" placeholder="Enter Country Name" spellcheck="false"  name="country" class="country"/> 
            <input type="text" placeholder="Enter City Name" spellcheck="false" name="city"/>
            <button id="searchButton"><img src="images/search.png" ></button>
      </form>
    </div>

    <div class="weather">
        <img src="images/rain.png" id="weather-icon" class="weather-icon">

        <h1 class="temp">${temperature}°C</h1>
        <input type="hidden" id="wc" value="${weatherCondition}"> </input>
        <h2 class="city">${city}</h2>
        <div class="date">${date}</div>
        <div class="details">
            <div class="col">
                <img src="images/humidity.png">
                <div>
                    <p class="humidity">${humidity}%</p>
                    <p>Humidity</p>
                </div>
            </div>
            <div class="col">
                <img src="images/wind.png">
                <div>
                    <p class="wind">${windSpeed} km/h</p>
                    <p>Wind Speed</p>
                </div>
            </div>
        </div>
    </div>
    </div>

    <script>
    var weatherIcon = document.getElementById("weather-icon");
        
        var val = document.getElementById("wc").value;
          switch (val) {
          case 'Clouds':
              weatherIcon.src = "images/clouds.png";
              break;
          case 'Clear':
              weatherIcon.src = "images/clear.png";
              break;
          case 'Rain':
              weatherIcon.src = "images/rain.png";
              break;
          case 'Mist':
              weatherIcon.src = "images/mist.png";
              break;
          case 'Snow':
              weatherIcon.src = "images/snow.png";
              break;
          case 'Drizzle':
              weatherIcon.src = "images/drizzle.png";
              break;
      }
          </script>
    
</body>
</html>