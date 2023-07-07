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
      width: 200px; /* Adjust the width as needed */
      height: 200px; /* Adjust the height as needed */
      object-fit: cover;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="html-object">
      <!-- Here's where you add the iframe to embed the Plotly graph -->
      <iframe width="100%" height="400" frameborder="0" scrolling="no" src="https://rawcdn.githack.com/kesondrakey/kesondrakey.github.io/d7d6c8619bd58493be9406344f4e9e6830b1f298/longterm_plots/longterm_plotly_fluxtower1.html"></iframe>
    </div>
    <div class="image">
      <img src="images/image1.jpeg" alt="Image 1">
    </div>
  </div>
</body>
</html>


<h2>Daily Plots </h2>


<!DOCTYPE html>
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
      width: 200px; /* Adjust the width to make it square */
      height: 200px; /* Adjust the height to make it square */
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
      background-color: rgba(0, 0, 0, 0.5); /* Add black transparent overlay */
      transition: background-color 0.3s ease; /* Add transition effect */
      outline: none; /* Remove the outline on hover */
    }
    
    .grid-item:hover a {
      background-color: rgba(0, 0, 0, 0); /* Make the overlay disappear on hover */
      color: #ffffff; /* Change the text color to white */
    }
    
    .grid-item img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      filter: brightness(100%);
      transition: filter 0.3s ease; /* Add transition effect */
      outline: none; /* Remove the outline on images */
      position: relative;
    }
    
    .grid-item:before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5); /* Add black overlay */
      transition: background-color 0.3s ease; /* Add transition effect */
    }
    
    .grid-item:hover:before {
      background-color: rgba(0, 0, 0, 0); /* Make the overlay disappear on hover */
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
    <div class="image">
      <img src="images/image1.jpeg" alt="Image 1">
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
    <divHere's the continuation of the updated code:

```html
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


