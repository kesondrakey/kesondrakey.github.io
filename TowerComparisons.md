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











<div class="collapsibleContainer">
<button class="collapsible temperature">Temperature</button>
<div class="content">


<h2>Temp and Rel Humidity mean (T_tmpr_rh_mean)</h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_T_tmpr_rh_mean_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_T_tmpr_rh_mean_today.png" alt="Fluxtower{{i}} - T_tmpr_rh_mean today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_T_tmpr_rh_mean_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_T_tmpr_rh_mean_yesterday.png" alt="Fluxtower{{i}} - T_tmpr_rh_mean yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<h2>Sonic Virtual Temp Avg (Ts_Avg)</h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Avg_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Avg_today.png" alt="Fluxtower{{i}} - Ts_Avg today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Avg_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Avg_yesterday.png" alt="Fluxtower{{i}} - Ts_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<h2>Sonic Virtual Temp sd (Ts_stdev)</h2>


<button class="collapsible day">Today</button>
<div class="content">

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
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_stdev_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_stdev_yesterday.png" alt="Fluxtower{{i}} - Ts_stdev yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>

</div> <!-- This is the closing tag for content div under Temperature -->
</div> <!-- This is the closing tag for collapsibleContainer div under Temperature -->




<div class="collapsibleContainer">
<button class="collapsible precipitation">Precipitation</button>
<div class="content">


<h2> Precipitation (precip_Tot)</h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_precip_Tot_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_precip_Tot_today.png" alt="Fluxtower{{i}} - precip_Tot today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_precip_Tot_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_precip_Tot_yesterday.png" alt="Fluxtower{{i}} - precip_Tot yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


</div> <!-- This is the closing tag for content div under Precipitation  -->
</div> <!-- This is the closing tag for collapsibleContainer div under Precipitation -->





<div class="collapsibleContainer">
<button class="collapsible soil">Soil</button>
<div class="content">


<h2> Soil Water Content (soil_water_Avg.1.)</h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_ soil_water_Avg.1._today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_soil_water_Avg.1._today.png" alt="Fluxtower{{i}} - soil_water_Avg.1. today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_soil_water_Avg.1._yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_soil_water_Avg.1._yesterday.png" alt="Fluxtower{{i}} - soil_water_Avg.1. yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>

</div> <!-- This is the closing tag for content div under Soil  -->
</div> <!-- This is the closing tag for collapsibleContainer div under Soil  -->













<div class="collapsibleContainer">
<button class="collapsible wind">Wind</button>
<div class="content">


<h2> Wind Speed (wnd_spd)</h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_wnd_spd_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_wnd_spd_today.png" alt="Fluxtower{{i}} - Tau today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_wnd_spd_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_wnd_spd_yesterday.png" alt="Fluxtower{{i}} - Tau yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>



<h2> Covariance of Ts and Ux (Ts_Ux_cov)</h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Ux_cov_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Ux_cov_today.png" alt="Fluxtower{{i}} - Tau today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Ux_cov_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Ux_cov_yesterday.png" alt="Fluxtower{{i}} - Tau yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>




<h2> Covariance of Ts and Uy (Ts_Uy_cov)</h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Uy_cov_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Uy_cov_today.png" alt="Fluxtower{{i}} - Tau today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Uy_cov_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Uy_cov_yesterday.png" alt="Fluxtower{{i}} - Tau yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>




<h2> Covariance of Ts and Uz (Ts_Uz_cov)</h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Uz_cov_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Uz_cov_today.png" alt="Fluxtower{{i}} - Tau today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Uz_cov_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ts_Uz_cov_yesterday.png" alt="Fluxtower{{i}} - Tau yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>




<h2> Wind Velocity X sd (Ux_stdev)</h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_stdev_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_stdev_today.png" alt="Fluxtower{{i}} - Tau today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_stdev_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_stdev_yesterday.png" alt="Fluxtower{{i}} - Tau yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>



<h2> Covariance of Ux and Uy (Ux_Uy_cov )</h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_Uy_cov_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_Uy_cov_today.png" alt="Fluxtower{{i}} - Tau today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_Uy_cov_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_Uy_cov_yesterday.png" alt="Fluxtower{{i}} - Tau yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>





<h2> Covariance of Ux and Uz (Ux_Uz_cov)</h2>


<button class="collapsible day">Today</button>
<div class="content">
<h3>Today Plots</h3>
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_Uz_cov_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_Uz_cov_today.png" alt="Fluxtower{{i}} - Tau today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_Uz_cov_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_Uz_cov_yesterday.png" alt="Fluxtower{{i}} - Tau yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>




<h2> Wind Velocity Y sd (Uy_stdev)</h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uy_stdev_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uy_stdev_today.png" alt="Fluxtower{{i}} - Tau today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uy_stdev_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uy_stdev_yesterday.png" alt="Fluxtower{{i}} - Tau yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>



<h2> Covariance of Uy and Uz (Uy_Uz_cov) </h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uy_Uz_cov_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uy_Uz_cov_today.png" alt="Fluxtower{{i}} - Cov today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uy_Uz_cov_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uy_Uz_cov_yesterday.png" alt="Fluxtower{{i}} - Cov yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<h2> Wind Velocity Z sd (Uz_stdev) </h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uz_stdev_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uz_stdev_today.png" alt="Fluxtower{{i}} - Z sd today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uz_stdev_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uz_stdev_yesterday.png" alt="Fluxtower{{i}} - Z sd yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<h2> Resultant Wind Speed (rslt_wnd_spd) </h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_rslt_wnd_spd_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_rslt_wnd_spd_today.png" alt="Fluxtower{{i}} - Wind Speed today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_rslt_wnd_spd_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_rslt_wnd_spd_yesterday.png" alt="Fluxtower{{i}} - Wind Speed yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>





<h2> Sonic Wind Direction (wnd_dir_sonic) </h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_wnd_dir_sonic_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_wnd_dir_sonic_today.png" alt="Fluxtower{{i}} - Sonic Direction today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_wnd_dir_sonic_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_wnd_dir_sonic_yesterday.png" alt="Fluxtower{{i}} - Sonic Direction yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<h2> Wind Direction sd (std_wnd_dir) </h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_std_wnd_dir_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_std_wnd_dir_today.png" alt="Fluxtower{{i}} - Wind Direction sd today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_std_wnd_dir_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_std_wnd_dir_yesterday.png" alt="Fluxtower{{i}} - Wind Direction sd yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<h2> Wind Direction (wnd_dir_compass) </h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_wnd_dir_compass_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_wnd_dir_compass_today.png" alt="Fluxtower{{i}} - Wind Direction today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_wnd_dir_compass_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_wnd_dir_compass_yesterday.png" alt="Fluxtower{{i}} - Wind Direction yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>






<h2> Wind Velocity X Avg (Ux_Avg) </h2>


<button class="collapsible day">Today</button>
<div class="content">

<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_Avg_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_Avg_today.png" alt="Fluxtower{{i}} - Wind Velocity X Avg today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_Avg_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Ux_Avg_yesterday.png" alt="Fluxtower{{i}} - Wind Velocity X Avg yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<h2> Wind Velocity Y Avg (Uy_Avg) </h2>


<button class="collapsible day">Today</button>
<div class="content">
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uy_Avg_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uy_Avg_today.png" alt="Fluxtower{{i}} - Wind Velocity Y Avg today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uy_Avg_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uy_Avg_yesterday.png" alt="Fluxtower{{i}} - Wind Velocity Y Avg yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<h2> Wind Velocity Z Avg (Uz_Avg) </h2>


<button class="collapsible day">Today</button>
<div class="content">
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uz_Avg_today.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uz_Avg_today.png" alt="Fluxtower{{i}} - Wind Velocity Z Avg today" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


<button class="collapsible day">Yesterday</button>
<div class="content">
<div class="flex-container">
{% for i in (1..4) %}
  <div>
    <h4>Flux Tower {{i}}</h4>
    <a href="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uz_Avg_yesterday.png" target="_blank">
      <img src="fluxtower{{i}}/daily_plots/fluxtower{{i}}_Uz_Avg_yesterday.png" alt="Fluxtower{{i}} - Wind Velocity Z Avg yesterday" onerror="imgError(this);">
    </a>
  </div>
  {% if i == 2 %}
  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>
  {% endif %}
{% endfor %}
</div>
</div>


</div> <!-- This is the closing tag for content div under Temperature -->
</div> <!-- This is the closing tag for collapsibleContainer div under Temperature -->


<div class="collapsibleContainer">
<button class="collapsible other">Other</button>
<div class="content">


<h2>Friction Velocity (u_star)</h2>


 <button class="collapsible day">Today</button>
 <div class="content">

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


<button class="collapsible day">Yesterday</button>
<div class="content">

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



<h2> Sensible Heat Flux (Hs)</h2>


<button class="collapsible day">Today</button>
<div class="content">

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


<button class="collapsible day">Yesterday</button>
<div class="content">

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


<h2> Momentum Flux Flux (tau)</h2>


<button class="collapsible day">Today</button>
<div class="content">

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


<button class="collapsible day">Yesterday</button>
<div class="content">

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

</div>
</div>









