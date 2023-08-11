---
layout: post
title: Tower Comparisons
description: Tower Comparisons
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
      .collapsible {
    background-color: transparent;
    color: white;
    text-align: center;
    padding: 15px;
    border: 2px solid white;
    font-size: 20px;
    display: flex; /* Change from block to flex */
    justify-content: center; /* Center content horizontally */
    align-items: center; /* Center content vertically */
    margin: 20px auto;
    cursor: pointer;
    transition: background-color 0.5s, color 0.5s, border-color 0.5s; /* Added transition for border color */
    width: 70%; /* Adjust as needed */
    }
    .collapsible:hover {
    color: gray;
    border-color: gray; /* Border color changes to gray on hover */
    }

    /* This is for hiding and showing the content when the button is clicked */
    .content {
    display: none;
    



  </style>
</head>
<body>

<div class="flex-container">
  <!-- Left Column for Towers 1_2 -->
  <div class="left-column">
    {% for tower in ("1_2") %}
      <div>
        <!-- Add content for towers 1_2 -->
        <h4>Flux Tower {{ tower }}</h4>
        <a href="fluxtower{{ tower }}/daily_plots/fluxtower{{ tower }}_albedo_Avg_yesterday.png" target="_blank">
          <img src="fluxtower{{ tower }}/daily_plots/fluxtower{{ tower }}_albedo_Avg_yesterday.png" alt="Fluxtower{{ tower }} - albedo_Avg yesterday" onerror="imgError(this);">
        </a>
        <!-- Add more variables here if needed -->
      </div>
    {% endfor %}
  </div>

  <!-- Right Column for Towers 3_4 -->
  <div class="right-column">
    {% for tower in ("3_4") %}
      <div>
        <!-- Add content for towers 3_4 -->
        <h4>Flux Tower {{ tower }}</h4>
        <a href="fluxtower{{ tower }}/daily_plots/fluxtower{{ tower }}_albedo_Avg_yesterday.png" target="_blank">
          <img src="fluxtower{{ tower }}/daily_plots/fluxtower{{ tower }}_albedo_Avg_yesterday.png" alt="Fluxtower{{ tower }} - albedo_Avg yesterday" onerror="imgError(this);">
        </a>
        <!-- Add more variables here if needed -->
      </div>
    {% endfor %}
  </div>
</div>
