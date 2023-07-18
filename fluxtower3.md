---
layout: post
title: Flux Tower 3
description: Flux Tower 3
nav-menu: true
---


<html>
<head>
  <style>
    .grid-container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); /* Make the grid responsive */
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
      background: rgba(0,0,0,0.7); /* Add a semi-transparent overlay */
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
      text-shadow: 2px 2px 4px rgba(0,0,0,0.5); /* Add a text shadow for better visibility */
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
  </style>
</head>
<body>
  <div class="container">
    <div class="html-object">
      <!-- Here's where you add the iframe to embed the Plotly graph -->
      <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower3.html">
      </iframe>
    </div>
  </div>

  <i>*Precipitation (precip_Tot; total mm); Temperature (T_tmpr_rh_mean, average °C); Wind Speed (wnd_spd); Soil Water Content (soil_water_Avg.1.; average volumetric water fraction (m^3/m^3))</i>

  <h2>Daily Plots</h2>

<div class="grid-container">
  <div class="grid-item">
    <a href="https://kesondrakey.github.io/fluxtower3/precip">
      <img src="images/precip.jpeg" alt="Precipitation">
      <span>Precipitation</span>
    </a>
  </div>
  <div class="grid-item">
    <a href="https://kesondrakey.github.io/fluxtower3/temp">
      <img src="images/temp.jpeg" alt="Temperature">
      <span>Temperature</span>
    </a>
  </div>
  <div class="grid-item">
    <a href="https://kesondrakey.github.io/fluxtower3/wind">
      <img src="images/wind.jpeg" alt="Wind">
      <span>Wind</span>
    </a>
  </div>
  <div class="grid-item">
    <a href="https://kesondrakey.github.io/fluxtower3/soil">
      <img src="images/soil.jpeg" alt="Soil">
      <span>Soil</span>
    </a>
  </div>
  <div class="grid-item">
    <a href="https://kesondrakey.github.io/fluxtower3/battery">
      <img src="images/battery.jpeg" alt="Battery">
      <span>Battery</span>
    </a>
  </div>
  <div class="grid-item">
    <a href="https://kesondrakey.github.io/fluxtower3/other">
      <img src="images/other.jpeg" alt="Other">
      <span>Other</span>
    </a>
  </div>
</div>

  
</body>
</html>

