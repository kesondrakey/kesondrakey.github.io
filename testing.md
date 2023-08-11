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
  text-align: center;
  padding: 15px;
  border: none;
  font-size: 20px;
  cursor: pointer;
  transition: background-color 0.5s, color 0.5s, border-color 0.5s;
  width: 100%;
  display: block;
  margin: 0 auto;
  margin-bottom: 10px;
  line-height: normal;
  border-radius: 5px; /* Rounded corners */
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.2); /* Shadow for 3D effect */
}

.collapsible.other {
  background: linear-gradient(to right, #000, #2f2f2f); /* Darker gradient background */
  color: white;
}

.collapsible.temperature {
  background: linear-gradient(to right, #b20000, #e67300); /* Darker gradient background */
  color: white;
}
  
.collapsible.day {
  background: linear-gradient(to right, #000000, #333333); /* Gradient background from black to dark gray */
  color: white;
}

.collapsible.precipitation {
  background: linear-gradient(to right, #00008b, #008b8b); /* Darker gradient background */
  color: white;
}

.collapsible.soil {
  background: linear-gradient(to right, #004d00, #7cfc00); /* Darker gradient background */
  color: white;
}

.collapsible.wind {
  background: linear-gradient(to right, #2d006b, #660066); /* Darker gradient background */
  color: white;
}

.content {
  display: none;
  margin: auto;
  width: 95%;
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
  transform: scale(1.5);
}

.flex-container a {
  text-decoration: none;  /* Removes underline from anchor tags */
}

.flex-container a:hover {
  text-decoration: none;  /* Removes underline from anchor tags even on hover */
}
</style>




<div class="flex-container">
  {% for tower in (1..2) %}
    <div class="left-column">
      

{% for tower in (1..2) %}
  <!-- Start T_tmpr_rh_mean: -->
  <h2>Temp and Rel Humidity mean (T_tmpr_rh_mean)</h2>
  <div class="flex-container">
    <div>
      <h4>Flux Tower {{ tower }}</h4>
      <a href="fluxtower{{ tower }}/daily_plots/fluxtower{{ tower }}_T_tmpr_rh_mean_yesterday.png" target="_blank">
        <img src="fluxtower{{ tower }}/daily_plots/fluxtower{{ tower }}_T_tmpr_rh_mean_yesterday.png" alt="Fluxtower{{ tower }} - T_tmpr_rh_mean yesterday" onerror="imgError(this);">
      </a>
    </div>
    <!-- Add more variables here -->
  </div>
{% endfor %}



      
    </div>
  {% endfor %}

  {% for tower in (3..4) %}
    <div class="right-column">
 
{% for tower in (3..4) %}
  <!-- Start T_tmpr_rh_mean: -->
  <h2>Temp and Rel Humidity mean (T_tmpr_rh_mean)</h2>
  <div class="flex-container">
    <div>
      <h4>Flux Tower {{ tower }}</h4>
      <a href="fluxtower{{ tower }}/daily_plots/fluxtower{{ tower }}_T_tmpr_rh_mean_yesterday.png" target="_blank">
        <img src="fluxtower{{ tower }}/daily_plots/fluxtower{{ tower }}_T_tmpr_rh_mean_yesterday.png" alt="Fluxtower{{ tower }} - T_tmpr_rh_mean yesterday" onerror="imgError(this);">
      </a>
    </div>
    <!-- Add more variables here -->
  </div>
{% endfor %}


      
    </div>
  {% endfor %}
</div>
</div>
