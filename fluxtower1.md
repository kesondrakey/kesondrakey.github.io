---
layout: post
title: Flux Tower 1
description: Flux Tower 1
nav-menu: true
---

<html>
<head>
  <style>
    /* Styles for the Image Grid */
    .grid-container {
      display: grid;
      grid-template-columns: repeat(3, 1fr); /* This will create a grid with three items in a row */
      grid-gap: 1em;
    }

    .grid-item {
      position: relative;
      padding-top: 100%; /* Maintain the aspect ratio */
      overflow: hidden;
      border: none; /* Ensure no borders are added to the grid item */
    }

    .grid-item a {
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      text-decoration: none;
      color: white;
      display: flex;
      align-items: center;
      justify-content: center;
      background: rgba(0, 0, 0, 0.7); /* Add a semi-transparent overlay */
      border: none; /* Ensure no borders are added to the link */
    }

    .grid-item img {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      object-fit: cover;
      border: none; /* Ensure no borders are added to the image */
      outline: none; /* Ensure no outlines are added to the image */
    }

    .grid-item span {
      font-size: 2rem; /* Adjust the font size */
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add a text shadow for better visibility */
      z-index: 2;
      font-weight: bold; /* Make the text bolder */
    }

    /* Larger and bolder text for desktop */
    @media (min-width: 768px) {
      .grid-item span {
        font-size: 3rem;
        font-weight: 900;
      }
    }

    /* Styles for the Button */
    html,
    body {
      height: 100%;
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100%;
    }

    .button {
      display: inline-block;
      padding: 10px 20px;
      font-size: 20px;
      cursor: pointer;
      text-align: center;
      text-decoration: none;
      outline: none;
      color: #fff;
      background-color: #4CAF50;
      border: none;
      border-radius: 15px;
      box-shadow: 0 9px #999;
      transition: background-color 0.3s, box-shadow 0.3s, transform 0.3s;
    }

    .button:hover {
      background-color: #3e8e41;
    }

    .button:active {
      background-color: #3e8e41;
      box-shadow: 0 5px #666;
      transform: translateY(4px);
    }
  </style>
</head>
<body>
  <!-- HTML structure for Image Grid -->
  <div class="grid-container">
    <div class="grid-item">
      <a href="#">
        <img src="image1.jpg" alt="Image 1">
        <span>Image 1</span>
      </a>
    </div>
    <!-- Add more grid items as needed -->
  </div>

  <!-- HTML structure for Button -->
  <div class="container">
    <button class="button">Hover Me</button>
  </div>



<body>
  <h1>Daily Data</h1>
  <div class="container">
    <div class="html-object">
      <!-- Here's where you add the iframe to embed the Plotly graph -->
      <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/longterm_daily_plotly_fluxtower1.html">
      </iframe>
    </div>
  </div>
  <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>

  <div class="container">
    <div class="html-object">
      <!-- Here's where you add the iframe to embed the Plotly graph -->
      <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_daily_fluxtower1.html">
      </iframe>
    </div>
  </div>

<button id="moreTechnicalData" class="button">More Technical Data</button>
  
  <div id="technicalData" style="display: none;">
    <!-- rest of your content -->
    <div class="container">
      <div class="html-object">
        <iframe width="100%" height="1800" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1.html">
        </iframe>
      </div>
    </div>


    <i>*Precipitation (precip_Tot; total mm); Temperature (T_tmpr_rh_mean, average °C); Wind Speed (wnd_spd); Soil Water Content (soil_water_Avg.1.; average volumetric water fraction (m^3/m^3))</i>

    <h2>Individual Daily Plots</h2> 

    <div class="grid-container">
      <!-- Rest of your grid items here -->
      <div class="grid-item">
        <a href="https://kesondrakey.github.io/fluxtower1/precip">
          <img src="images/precip.jpeg" alt="Precipitation">
          <span>Precipitation</span>
        </a>
      </div>
      <div class="grid-item">
        <a href="https://kesondrakey.github.io/fluxtower1/temp">
          <img src="images/temp.jpeg" alt="Temperature">
          <span>Temperature</span>
        </a>
      </div>
      <div class="grid-item">
        <a href="https://kesondrakey.github.io/fluxtower1/wind">
          <img src="images/wind.jpeg" alt="Wind">
          <span>Wind</span>
        </a>
      </div>
      <div class="grid-item">
        <a href="https://kesondrakey.github.io/fluxtower1/soil">
          <img src="images/soil.jpeg" alt="Soil">
          <span>Soil</span>
        </a>
      </div>
      <div class="grid-item">
        <a href="https://kesondrakey.github.io/fluxtower1/battery">
          <img src="images/battery.jpeg" alt="Battery">
          <span>Battery</span>
        </a>
      </div>
      <div class="grid-item">
        <a href="https://kesondrakey.github.io/fluxtower1/other">
          <img src="images/other.jpeg" alt="Other">
          <span>Other</span>
        </a>
      </div>
    </div>
  </div>

<script>
  document.getElementById('moreTechnicalData').addEventListener('click', function() {
    var technicalData = document.getElementById('technicalData');
    if (technicalData.style.display === 'none') {
      technicalData.style.display = 'block';
    } else {
      technicalData.style.display = 'none';
    }
  });
</script>

</body>
</html>


