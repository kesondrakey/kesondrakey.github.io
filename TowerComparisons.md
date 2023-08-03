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

<style>
  .collapsible {
    background-color: transparent;
    color: white;
    text-align: center;
    padding: 15px;
    border: 2px solid white;
    font-size: 20px;
    justify-content: center;
    align-items: center;
    cursor: pointer;
    transition: background-color 0.5s, color 0.5s, border-color 0.5s;
    width: 70%;
    display: block;
    margin: 0 auto;
    margin-bottom: 10px;
    line-height: normal; /* Add this line */
margin-bottom: 10px;
}
.content {
    display: none;
    margin: auto;
    width: 70%;
}
.collapsibleContainer {
    text-align: center;
}
</style>

<header>
    <h1 style="text-align:center;">Site Comparisons</h1>
</header>

<div class="collapsibleContainer">
<button class="collapsible">Temperature</button>
<div class="content">
<h1>Daily Plots</h1>

<h2>Today Plots</h2>
<div class="grid-container">
<div style='text-align:center; max-width:500px; margin:auto;'><h3>Total Precip</h3>
<a href="Fluxtower1/daily_plots/fluxtower1_precip_Tot_today.png" target="_blank">
  <img src="fluxtower1/daily_plots/fluxtower1_precip_Tot_today.png" alt="fluxtower1 - Total Precip" width="500" onerror="imgError(this);">
</a>
<!-- Your grid items here for Today Plots -->
</div>

<h2>Yesterday Plots</h2>
<div class="grid-container">
<!-- Your grid items here for Yesterday Plots -->
</div>
</div>
</div>

<div class="collapsibleContainer">
<button class="collapsible">Other</button>
<div class="content">

<!-- u_star section -->
<h2>Friction Velocity (u_star)</h2>

<h3>Today Plots</h3>
<div class="grid-container">
  <!-- Replace 'Fluxtower1' with the actual tower names -->
  <div><img src="Fluxtower1/daily_plots/fluxtower1_u_star_today.png" alt="Fluxtower1 - u_star today" onerror="imgError(this);"></div>
  <div><img src="Fluxtower2/daily_plots/fluxtower2_u_star_today.png" alt="Fluxtower2 - u_star today" onerror="imgError(this);"></div>
  <div><img src="Fluxtower3/daily_plots/fluxtower3_u_star_today.png" alt="Fluxtower3 - u_star today" onerror="imgError(this);"></div>
  <div><img src="Fluxtower4/daily_plots/fluxtower4_u_star_today.png" alt="Fluxtower4 - u_star today" onerror="imgError(this);"></div>
</div>

<h3>Yesterday Plots</h3>
<div class="grid-container">
  <div><img src="Fluxtower1/daily_plots/fluxtower1_u_star_yesterday.png" alt="Fluxtower1 - u_star yesterday" onerror="imgError(this);"></div>
  <div><img src="Fluxtower2/daily_plots/fluxtower2_u_star_yesterday.png" alt="Fluxtower2 - u_star yesterday" onerror="imgError(this);"></div>
  <div><img src="Fluxtower3/daily_plots/fluxtower3_u_star_yesterday.png" alt="Fluxtower3 - u_star yesterday" onerror="imgError(this);"></div>
  <div><img src="Fluxtower4/daily_plots/fluxtower4_u_star_yesterday.png" alt="Fluxtower4 - u_star yesterday" onerror="imgError(this);"></div>
</div>

<!-- Hs section -->
<h2>Sensible Heat Flux (Hs)</h2>

<h3>Today Plots</h3>
<div class="grid-container">
  <!-- Replace 'Fluxtower1' with the actual tower names -->
  <div><img src="Fluxtower1/daily_plots/fluxtower1_Hs_today.png" alt="Fluxtower1 - Hs today" onerror="imgError(this);"></div>
  <div><img src="Fluxtower2/daily_plots/fluxtower2_Hs_today.png" alt="Fluxtower2 - Hs today" onerror="imgError(this);"></div>
  <div><img src="Fluxtower3/daily_plots/fluxtower3_Hs_today.png" alt="Fluxtower3 - Hs today" onerror="imgError(this);"></div>
  <div><img src="Fluxtower4/daily_plots/fluxtower4_Hs_today.png" alt="Fluxtower4 - Hs today" onerror="imgError(this);"></div>
</div>

<h3>Yesterday Plots</h3>
<div class="grid-container">
  <div><img src="Fluxtower1/daily_plots/fluxtower1_Hs_yesterday.png" alt="Fluxtower1 - Hs yesterday" onerror="imgError(this);"></div>
  <div><img src="Fluxtower2/daily_plots/fluxtower2_Hs_yesterday.png" alt="Fluxtower2 - Hs yesterday" onerror="imgError(this);"></div>
  <div><img src="Fluxtower3/daily_plots/fluxtower3_Hs_yesterday.png" alt="Fluxtower3 - Hs yesterday" onerror="imgError(this);"></div>
  <div><img src="Fluxtower4/daily_plots/fluxtower4_Hs_yesterday.png" alt="Fluxtower4 - Hs yesterday" onerror="imgError(this);"></div>
</div>

<!-- tau section -->
<h2>Momentum Flux (tau)</h2>

<h3>Today Plots</h3>
<div class="grid-container">
  <!-- Replace 'Fluxtower1' with the actual tower names -->
  <div><img src="Fluxtower1/daily_plots/fluxtower1_tau_today.png" alt="Fluxtower1 - tau today" onerror="imgError(this);"></div>
  <div><img src="Fluxtower2/daily_plots/fluxtower2_tau_today.png" alt="Fluxtower2 - tau today" onerror="imgError(this);"></div>
  <div><img src="Fluxtower3/daily_plots/fluxtower3_tau_today.png" alt="Fluxtower3 - tau today" onerror="imgError(this);"></div>
  <div><img src="Fluxtower4/daily_plots/fluxtower4_tau_today.png" alt="Fluxtower4 - tau today" onerror="imgError(this);"></div>
</div>

<h3>Yesterday Plots</h3>
<div class="grid-container">
  <div><img src="Fluxtower1/daily_plots/fluxtower1_tau_yesterday.png" alt="Fluxtower1 - tau yesterday" onerror="imgError(this);"></div>
  <div><img src="Fluxtower2/daily_plots/fluxtower2_tau_yesterday.png" alt="Fluxtower2 - tau yesterday" onerror="imgError(this);"></div>
  <div><img src="Fluxtower3/daily_plots/fluxtower3_tau_yesterday.png" alt="Fluxtower3 - tau yesterday" onerror="imgError(this);"></div>
  <div><img src="Fluxtower4/daily_plots/fluxtower4_tau_yesterday.png" alt="Fluxtower4 - tau yesterday" onerror="imgError(this);"></div>
</div>

</div>
</div>




</div>

<script>
function imgError(image) {
    image.onerror = "";
    image.outerHTML = '<img src="../../images/cat_attempt.png" alt="Cat 404" style="width: 200px; display: block; margin: auto;"><div>Sorry, not available! This means we don\'t have data for today yet, or the values are all NA!</div>';
    return true;
}
</script>

