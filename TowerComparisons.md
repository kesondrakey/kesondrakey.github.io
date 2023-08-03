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
  width: 100%;
  display: block;
  margin: 0 auto;
  margin-bottom: 10px;
  line-height: normal; /* Add this line */
  margin-bottom: 10px;
}
.content {
  display: none;
  margin: auto;
  width: 100%;
}
.collapsibleContainer {
  text-align: center;
}

.flex-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
}

.flex-container > div {
  width: 24%;
  text-align: center;
  margin-bottom: 20px;
}

.flex-container img {
  max-width: 100%;
  height: auto;
}

.flex-container img:hover {
  transform: scale(1.1);
}

.flex-container a {
  text-decoration: none;  /* Removes underline from anchor tags */
}

.flex-container a:hover {
  text-decoration: none;  /* Removes underline from anchor tags even on hover */
}
</style>


<header>
    <h1 style="text-align:center;">Site Comparisons</h1>
</header>

<div class="collapsibleContainer">
<button class="collapsible">Other</button>
<div class="content">

<!-- u_star section -->
<h2>Friction Velocity (u_star)</h2>

<!-- Today Plots -->
 <button class="collapsible">Today</button>
 <div class="content">
<h3>Today Plots</h3>
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_u_star_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_u_star_today.png" alt="Fluxtower{{i}} - u_star today" onerror="imgError(this);">
    </a>
  </div>
    {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
 </div>

<!-- Yesterday Plots -->
<button class="collapsible">Yesterday</button>
<div class="content">
<h3>Yesterday Plots</h3>
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_u_star_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_u_star_yesterday.png" alt="Fluxtower{{i}} - Hs yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
  </div>


<!-- Hs section -->
<h2> Sensible Heat Flux (Hs)</h2>

<!-- Today Plots -->
<button class="collapsible">Today</button>
<div class="content">
<h3>Today Plots</h3>
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Hs_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Hs_today.png" alt="Fluxtower{{i}} - Hs today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>

<!-- Yesterday Plots -->
<button class="collapsible">Yesterday</button>
<div class="content">
<h3>Yesterday Plots</h3>
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Hs_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Hs_yesterday.png" alt="Fluxtower{{i}} - Hs yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>

<!-- tau section -->
<h2> Momentum Flux Flux (tau)</h2>

<!-- Today Plots -->
<button class="collapsible">Today</button>
<div class="content">
<h3>Today Plots</h3>
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_tau_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_tau_today.png" alt="Fluxtower{{i}} - Tau today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>

<!-- Yesterday Plots -->
<button class="collapsible">Yesterday</button>
<div class="content">
<h3>Yesterday Plots</h3>
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_tau_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_tau_yesterday.png" alt="Fluxtower{{i}} - Tau yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>

