---
layout: post
title: Flux Tower 1
description: Flux Tower 1
nav-menu: true
---


  <div class="container">
    <div class="html-object">
      <!-- Here's where you add the iframe to embed the Plotly graph -->
      <iframe width="100%" height="400" frameborder="0" scrolling="no" src="https://rawcdn.githack.com/kesondrakey/kesondrakey.github.io/5751ae02e646d085df29a0bdd78743b7f0f2358c/longterm_plots/longterm_plotly_fluxtower1.html">
       
      </iframe>
    </div>
  </div>

   <h6><i></i>Precipitation (precip_Tot); Temperature (T_tmpr_rh_mean, °C); Wind Speed (wnd_spd); Soil Water Content (Tsoil1_Avg)</h6></i>

  <h2>Daily Plots</h2>

<!DOCTYPE html>
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
      background: rgba(0,0,0,0.5); /* Add a semi-transparent overlay */
      transition: background-color 0.5s ease; /* Add a transition effect */
    }

    .grid-item a:hover {
      background: rgba(0,0,0,0.7); /* Darken the overlay on hover */
    }

    .grid-item img {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: filter 0.5s ease; /* Add a transition effect */
    }

    .grid-item:hover img {
      filter: brightness(70%); /* Darken the image on hover */
    }

    .grid-item span {
      font-size: 1.5rem; /* Adjust the font size */
      text-shadow: 2px 2px 4px rgba(0,0,0,0.5); /* Add a text shadow for better visibility */
      z-index: 1;
    }
  </style>
</head>
<body>
  <div class="grid-container">
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
      <a href="https://kesondrakey.github.io/fluxtower1/netrad">
        <img src="images/netrad.jpeg" alt="Net Radiation">
        <span>Net Radiation</span>
      </a>
    </div>
    <div class="grid-item">
      <a href="https://kesondrakey.github.io/fluxtower1/other">
        <img src="images/other.jpeg" alt="Other">
        <span>Other</span>
      </a>
    </div>
  </div>
</body>
</html>

