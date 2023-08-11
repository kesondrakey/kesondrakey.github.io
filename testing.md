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



<!-- Your scripts and styles go here -->

<div class="collapsibleContainer">
  {% for category in vars_to_plot %}
    <button class="collapsible">{{ category }}</button>
    <div class="content">
      <!-- Loop through variables in the current category -->
      {% for variable in vars_to_plot[category] %}
        <h2>{{ variable }}</h2>
        <div class="flex-container">
          {% for tower in ("1_2", "3_4") %}
            <div>
              <h4>Flux Tower {{ tower }}</h4>
              <a href="fluxtower{{ tower }}/daily_plots/fluxtower{{ tower }}_{{ variable }}_yesterday.png" target="_blank">
                <img src="fluxtower{{ tower }}/daily_plots/fluxtower{{ tower }}_{{ variable }}_yesterday.png" alt="Fluxtower{{ tower }} - {{ variable }} yesterday" onerror="imgError(this);">
              </a>
            </div>
          {% endfor %}
        </div>
      {% endfor %}
    </div>
  {% endfor %}
</div>

