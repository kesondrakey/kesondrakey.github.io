---
layout: post
title: Flux Tower 1
description: Flux Tower 1
nav-menu: true
---

<html>
<head>
  <style>
    .grid-container {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      grid-template-rows: repeat(2, 1fr);
    }
    
    .grid-item {
      position: relative;
      overflow: hidden;
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
    
    .grid-item span {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      z-index: 1;
      text-align: center;
      font-size: 18px; /* Adjust the font size as needed */
      font-weight: bold;
    }
    
    .grid-item:hover span {
      color: #ffffff; /* Change text color to white on hover */
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
