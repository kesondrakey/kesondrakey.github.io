---
layout: post
title: Tower Comparisons
description: Tower Comparisons
nav-menu: true
---


<script>
window.onload = function() {
  var coll = document.getElementsByClassName("collapsible");
  var i;

  for (i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function() {
      this.classList.toggle("active");
      var content = this.nextElementSibling;
      if (content.style.display === "block") {
        content.style.display = "none";
      } else {
        content.style.display = "block";
      }
    });
  }
}
</script>


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
    }
  </style>
</head>
<body>

<header>
    <h1 style="text-align:center;">Site Comparisons</h1>
</header>


<button class="collapsible">Temperature</button>
<div class="content">
<h1>Daily Plots</h1>

<h2>Today Plots</h2>
<div class="grid-container">
  <div class="grid-item">
    <img src="../daily_plots/fluxtower1_T_tmpr_rh_mean_today.png" alt="Flux Tower 1">
  </div>
  <div class="grid-item">
    <img src="../daily_plots/fluxtower2_T_tmpr_rh_mean_today.png" alt="Flux Tower 2">
  </div>
  <div class="grid-item">
    <img src="../daily_plots/fluxtower3_T_tmpr_rh_mean_today.png" alt="Flux Tower 3">
  </div>
  <div class="grid-item">
    <img src="../daily_plots/fluxtower4_T_tmpr_rh_mean_today.png" alt="Flux Tower 4">
  </div>
</div>

<h2>Yesterday Plots</h2>
<div class="grid-container">
  <div class="grid-item">
    <img src="../daily_plots/fluxtower1_T_tmpr_rh_mean_yesterday.png" alt="Flux Tower 1">
  </div>
  <div class="grid-item">
    <img src="../daily_plots/fluxtower2_T_tmpr_rh_mean_yesterday.png" alt="Flux Tower 2">
  </div>
  <div class="grid-item">
    <img src="../daily_plots/fluxtower3_T_tmpr_rh_mean_yesterday.png" alt="Flux Tower 3">
  </div>
  <div class="grid-item">
    <img src="../daily_plots/fluxtower4_T_tmpr_rh_mean_yesterday.png" alt="Flux Tower 4">
  </div>
</div>

<h1>Long Term Data</h1>
  
<div class="container">
  <div class="html-object">
    <!-- Here's where you add the iframe to embed the Plotly graph -->
    <iframe width="100%" height="800" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1.html">
    </iframe>
  </div>
</div>
<h4><i>*Click your variable of interest</i></h4>

</div> <!-- End of content div -->

<!-- New collapsible button for Other -->

<button class="collapsible">Other</button>
<div class="content">
<h2>Today Plots</h2>
<div class="grid-container">
  <!-- Replace with your specific image paths -->
  <!-- TODO: Insert image paths -->
</div>

<h2>Yesterday Plots</h2>
<div class="grid-container">
  <!-- Replace with your specific image paths -->
  <!-- TODO: Insert image paths -->
</div>

<h1>Long Term Data</h1>

<div class="container">
  <div class="html-object">
    <!-- Here's where you add the iframe to embed the Plotly graph -->
    <iframe width="100%" height="800" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1.html">
    </iframe>
  </div>
</div>
<h4><i>*Click your variable of interest</i></h4>
</div> <!-- End of content
