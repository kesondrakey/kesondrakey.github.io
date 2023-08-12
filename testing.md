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



<script>
var categories = {
  "Carbon Flux": ["CO2_li_wpl_H_li"],
  "Temperature": ["T_tmpr_rh_mean", "Ts_Avg"],
  "Net Radiation": ["albedo_Avg", "Rn_Avg", "par_Avg", "Rl_incoming_Avg", "Rl_outgoing_Avg", "Rs_incoming_Avg", "Rs_outgoing_Avg"],
  "Relative Humidity": ["RH_tmpr_rh_mean"],
  "Latent Heat Flux": ["LE_li_irga", "LE_li_wpl"],
  "Sensible Heat Flux": ["Hs"],
  "Precipitation": ["precip_Tot"],
  "Wind": ["u_star", "wnd_spd", "Uz_Avg", "Uz_stdev"],
  "Soil": ["soil_water_Avg.1.", "soil_water_Avg.2.", "soil_water_Avg.3.", "Tsoil1_Avg", "Tsoil2_Avg", "Tsoil3_Avg", "Tsoil4_Avg"],
  "Battery Data": ["batt_volt_Avg", "cdm_batt_volt_Avg"]
};


<!-- Continue Temperature section -->
<!-- Start Ts_stdev: -->
<h2>Sonic Virtual Temp SD (Ts_stdev)</h2>
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_stdev_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_stdev_today.png" alt="Fluxtower{{i}} - Ts_stdev today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
<!-- End Ts_stdev: -->

<!-- Add more variables under this section if needed -->

</div>
<!-- End Today button: -->

<!-- Start Yesterday button: -->
<button class="collapsible day">Yesterday</button>
<div class="content">

<!-- Add more sections and variables for yesterday if needed -->

</div>
<!-- End Yesterday button: -->
<!-- Continue Temperature section -->


<!-- Continue Precipitation section -->
<!-- Start Another Section: -->
<button class="collapsible day">Another Section</button>
<div class="content">

<!-- Start Another Variable: -->
<h2>Variable Name</h2>
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_variable_name_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_variable_name_today.png" alt="Fluxtower{{i}} - Variable Name today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
<!-- End Another Variable -->

<!-- Add more variables under this section if needed -->

</div>
<!-- End Another Section -->
<!-- Continue Precipitation section -->


<!-- Continue Soil section -->
<!-- Start Another Section: -->
<button class="collapsible day">Another Section</button>
<div class="content">

<!-- Start Another Variable: -->
<h2>Variable Name</h2>
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_variable_name_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_variable_name_today.png" alt="Fluxtower{{i}} - Variable Name today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
<!-- End Another Variable -->

<!-- Add more variables under this section if needed -->

</div>
<!-- End Another Section -->
<!-- Continue Soil section -->


<!-- Continue Wind section -->
<!-- Start Another Section: -->
<button class="collapsible day">Another Section</button>
<div class="content">

<!-- Start Another Variable: -->
<h2>Variable Name</h2>
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_variable_name_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_variable_name_today.png" alt="Fluxtower{{i}} - Variable Name today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
<!-- End Another Variable -->

<!-- Add more variables under this section if needed -->

</div>
<!-- End Another Section -->
<!-- Continue Wind section -->

