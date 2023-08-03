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
    display: inline-block;
    justify-content: center;
    align-items: center;
    margin: 20px auto;
    cursor: pointer;
    transition: background-color 0.5s, color 0.5s, border-color 0.5s;
    width: 70%;
    line-height: 1.5; /* Adjust this value to center text vertically */
    margin-left: auto;
    margin-right: auto;
    display: block;
}
.content {
    display: none;
    margin: auto;
    width: 70%;
}
</style>

<header>
    <h1 style="text-align:center;">Site Comparisons</h1>
</header>

<button class="collapsible">Temperature</button>
<div class="content">
<h1>Daily Plots</h1>

<h2>Today Plots</h2>
<div class="grid-container">

<div style='text-align:center; max-width:500px; margin:auto;'><h3>Total Precip</h3>
<a href="Fluxtower1/daily_plots/fluxtower1_precip_Tot_today.png" target="_blank">
  <img src="fluxtower1/daily_plots/fluxtower1_precip_Tot_today.png" alt="fluxtower1 - Total Precip" width="500" onerror="imgError(this);">
</a>
</div>
</div>

<h2>Yesterday Plots</h2>
<div class="grid-container">
<!-- Your grid items here for Yesterday Plots -->
</div>
</div> <!-- Closes the first content div -->

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
</div> <!-- Closes the second content div -->

<script>
function imgError(image) {
    image.onerror = "";
    image.outerHTML = '<img src="../../images/cat_attempt.png" alt="Cat 404" style="width: 200px; display: block; margin: auto;"><div>Sorry, not available! This means we don\'t have data for today yet, or the values are all NA!</div>';
    return true;
}
</script>

