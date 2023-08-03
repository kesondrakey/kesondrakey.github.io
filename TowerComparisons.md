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
.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); /* increased from 250px to 300px */
  gap: 10px;
  justify-content: center;
}
.vertical-line {
  width: 1px; /* Line width */
  height: 200px; /* Line height - adjust according to your image height */
  background-color: #A9A9A9; /* Line color - dark gray */
  grid-column: 3; /* Adjust the grid column if needed */
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

<!-- Replace 'fluxtower1' with the actual tower names -->
<!-- Create an anchor link for each image. The href attribute points to the full-sized image, and the img element displays a smaller version. -->

<!-- Today Plots -->
<h3>Today Plots</h3>
<div class="grid-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_u_star_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_u_star_today.png" alt="Fluxtower{{i}} - u_star today" onerror="imgError(this);">
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
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_u_star_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_u_star_yesterday.png" alt="Fluxtower{{i}} - u_star yesterday" onerror="imgError(this);">
    </a>
  </div>
{% endfor %}
</div>

<!-- Rest of the content (Hs and tau sections) would go here, modified in a similar fashion -->

</div>
</div>

<script>
function imgError(image) {
    image.onerror = "";
    image.outerHTML = '<img src="../../images/cat_attempt.png" alt="Cat 404" style="width: 200px; display: block; margin: auto;"><div>Sorry, not available! This means we don\'t have data for today yet, or the values are all NA!</div>';
    return true;
}
</script>
