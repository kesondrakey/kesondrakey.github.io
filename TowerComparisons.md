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

<script>
function imgError(image) {
    image.onerror = "";
    image.outerHTML = '<img src="../../images/cat_attempt.png" alt="Cat 404" style="width: 200px; display: block; margin: auto;"><div>Sorry, not available! This means we don\'t have data for today yet, or the values are all NA!</div>';
    return true;
}
</script>

<header>
    <h1 style="text-align:center;">Site Comparisons</h1>
</header>

<div style="display: flex; justify-content: space-between;">
  <div style="width: 50%; text-align: center;">
    <h2>Yesterday</h2>

    <!-- Hs section -->
    <h3>Sensible Heat Flux (Hs)</h3>

    {% for i in (1..4) %}
      <div style="text-align:center; max-width:500px; margin:auto;">
        <h4>Flux Tower {{i}}</h4>
        <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Hs_yesterday.png" target="_blank">
          <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Hs_yesterday.png" alt="Fluxtower{{i}} - Hs yesterday" width="500" onerror="imgError(this);">
        </a>
        <div style="border:1px solid black; background-color: #003366; padding:10px; color: white;">
          Min: 12.52, Max: 14.33, Avg: 13.17
        </div>
        <hr style="border-top: 1px solid #ddd;">
      </div>
    {% endfor %}
  </div>

  <div style="width: 50%; text-align: center;">
    <h2>Today</h2>

    <!-- Hs section -->
    <h3>Sensible Heat Flux (Hs)</h3>

    {% for i in (1..4) %}
      <div style="text-align:center; max-width:500px; margin:auto;">
        <h4>Flux Tower {{i}}</h4>
        <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Hs_today.png" target="_blank">
          <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Hs_today.png" alt="Fluxtower{{i}} - Hs today" width="500" onerror="imgError(this);">
        </a>
        <div style="border:1px solid black; background-color: #003366; padding:10px; color: white;">
          Min: 12.52, Max: 14.33, Avg: 13.17
        </div>
        <hr style="border-top: 1px solid #ddd;">
      </div>
    {% endfor %}
  </div>
</div>
