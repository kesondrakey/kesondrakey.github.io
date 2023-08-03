<!-- Tower Comparison Page -->

---
layout: post
title: Tower Comparisons
description: Tower Comparisons
nav-menu: true
---

<script>
function imgError(image) {
    image.onerror = "";
    image.outerHTML = '<img src="../../images/cat_attempt.png" alt="Cat 404" style="width: 200px; display: block; margin: auto;"><div>Sorry, not available! This means we don\'t have data for today yet, or the values are all NA!</div>';
    return true;
}
</script>

<style>
.collapsible {
  background-color: transparent;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color: #ccc;
}

.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
}
</style>


<header>
    <h1 style="text-align:center;">Site Comparisons</h1>
</header>

<button class="collapsible">Open Section 1</button>
<div class="content">
  <h2>Friction Velocity (u_star)</h2>
  <!-- Replace 'fluxtower1' with the actual tower names -->
  <!-- Create an anchor link for each image. The href attribute points to the full-sized image, and the img element displays a smaller version. -->
  <!-- Today Plots -->
  <h3>Today Plots</h3>
  {% for i in (1..4) %}
    <div style='text-align:center; max-width:500px; margin:auto;'>
      <h4>Flux Tower {{i}}</h4>
      <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_u_star_today.png" target="_blank">
        <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_u_star_today.png" alt="Fluxtower{{i}} - u_star today" width="500" onerror="imgError(this);">
      </a>
    </div>
  {% endfor %}
  <!-- Yesterday Plots -->
  <h3>Yesterday Plots</h3>
  {% for i in (1..4) %}
    <div style='text-align:center; max-width:500px; margin:auto;'>
      <h4>Flux Tower {{i}}</h4>
      <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_u_star_yesterday.png" target="_blank">
        <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_u_star_yesterday.png" alt="Fluxtower{{i}} - u_star yesterday" width="500" onerror="imgError(this);">
      </a>
    </div>
  {% endfor %}
</div>


<!-- Hs section -->
<h2> Sensible Heat Flux (Hs)</h2>

<!-- Replace 'fluxtower1' with the actual tower names -->
<!-- Create an anchor link for each image. The href attribute points to the full-sized image, and the img element displays a smaller version. -->

<!-- Today Plots -->
<h3>Today Plots</h3>
<div class="grid-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Hs_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Hs_today.png" alt="Fluxtower{{i}} - Hs today" onerror="imgError(this);">
    </a>
  </div>
{% endfor %}
</div>

<!-- Yesterday Plots -->
<h3>Yesterday Plots</h3>
<div class="grid-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Hs_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Hs_yesterday.png" alt="Fluxtower{{i}} - Hs yesterday" onerror="imgError(this);">
    </a>
  </div>
{% endfor %}
</div>



<script>
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
</script>

