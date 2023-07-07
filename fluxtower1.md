---
layout: post
title: Flux Tower 1
description: Flux Tower 1
nav-menu: true
---

<html>
<head>
  <style>
    .container {
      display: flex;
      align-items: center;
    }
    
    .html-object {
      flex: 2;
    }
    
    .image {
      flex: 1;
      margin-left: 10px;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    
    .image img {
      border-radius: 50%;
      width: 250px; /* Increased the width to make the image bigger */
      height: 250px; /* Increased the height to make the image bigger */
      object-fit: cover;
      filter: brightness(70%); /* Added dark overlay to improve text readability */
    }
    
    .grid-container {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      grid-template-rows: repeat(2, 1fr);
      grid-gap: 10px;
    }
    
    .grid-item {
      position: relative;
      overflow: hidden;
      height: 200px; /* Adjust the height to make it square */
      border-radius: 0; /* Make the buttons square-shaped */
    }
    
    .grid-item a {
      position: relative;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      width: 100%;
      height: 100%;
      text-decoration: none;
      color: #ffffff;
      transition: background-color 0.3s ease; /* Add transition effect */
      outline: none; /* Remove the outline on buttons */
      border: none; /* Remove the border on buttons */
    }
    
    .grid-item a::before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.7); /* Add black overlay */
      transition: opacity 0.3s ease; /* Add transition effect */
      opacity: 1; /* Set the initial opacity to show the black overlay */
    }
    
    .grid-item a:hover::before {
      opacity: 0; /* Remove the black overlay on hover */
    }
    
    .grid-item img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      filter: brightness(100%);
      transition: filter 0.3s ease; /* Add transition effect */
      outline: none; /* Remove the outline on images */
    }
    
    .grid-item:hover img {
      filter: brightness(50%); /* Darken the image on hover */
    }
    
    .grid-item:hover span {
      color: #ffffff; /* Keep the text white when hovering */
    }
    
    .grid-item span {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      z-index: 1;
      text-align: center;
      font-size: 18px; /* Adjust the font size as needed */
      font-weight: bold;
      pointer-events: none; /* Prevent the span from interfering with hover events */
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="html-object">
      <!-- Here's where you add the iframe to embed the Plotly graph -->
      <iframe width="100%" height="400" frameborder="0" scrolling="no" src="https://rawcdn.githack.com/kesondrakey/kesondrakey.github.io/d7d6c8619bd58493be9406344f4e9e6830b1f298/longterm_plots/longterm_plotly_fluxtower1.html"></iframe>
    </div>
  </div>

  <h2>Daily Plots</h2>

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





