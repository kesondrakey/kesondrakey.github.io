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

  <!-- This is an HTML comment, it won't appear on the page -->
<!-- Start site objects and things here: -->

<!-- Start Temperature section: -->
<div class="collapsibleContainer">
<button class="collapsible temperature">Temperature</button>
<div class="content">

<!-- Start T_tmpr_rh_mean: -->
<h2>Air Temperature (T_tmpr_rh_mean)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_T_tmpr_rh_mean_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_T_tmpr_rh_mean_yesterday.png" alt="Fluxtower1_2 - T_tmpr_rh_mean yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_T_tmpr_rh_mean_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_T_tmpr_rh_mean_today.png" alt="Fluxtower1_2 - T_tmpr_rh_mean today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_T_tmpr_rh_mean_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_T_tmpr_rh_mean_yesterday.png" alt="Fluxtower3_4 - T_tmpr_rh_mean yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_T_tmpr_rh_mean_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_T_tmpr_rh_mean_today.png" alt="Fluxtower3_4 - T_tmpr_rh_mean today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end T_tmpr_rh_mean: -->
            
<!-- Start Ts_Avg: -->
<h2>Average Ts (Ts_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Ts_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Ts_Avg_yesterday.png" alt="Fluxtower1_2 - Ts_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Ts_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Ts_Avg_today.png" alt="Fluxtower1_2 - Ts_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Ts_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Ts_Avg_yesterday.png" alt="Fluxtower3_4 - Ts_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Ts_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Ts_Avg_today.png" alt="Fluxtower3_4 - Ts_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Ts_Avg: -->

</div> <!-- This is the closing tag for content div under Temperature -->
</div> <!-- This is the closing tag for collapsibleContainer div under Temperature -->
<!-- END Temperature section: -->





<!-- Start Carbon Flux section: -->
<div class="collapsibleContainer">
<button class="collapsible Carbon Flux">Carbon Flux</button>
<div class="content">

<!-- Start CO2_li_wpl_H_li: -->
<h2>Carbon Flux (CO2_li_wpl_H_li)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_CO2_li_wpl_H_li_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_CO2_li_wpl_H_li_yesterday.png" alt="Fluxtower1_2 - CO2_li_wpl_H_li yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_CO2_li_wpl_H_li_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_CO2_li_wpl_H_li_today.png" alt="Fluxtower1_2 - CO2_li_wpl_H_li today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_CO2_li_wpl_H_li_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_CO2_li_wpl_H_li_yesterday.png" alt="Fluxtower3_4 - CO2_li_wpl_H_li yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_CO2_li_wpl_H_li_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_CO2_li_wpl_H_li_today.png" alt="Fluxtower3_4 - CO2_li_wpl_H_li today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end CO2_li_wpl_H_li: -->
            

</div> <!-- This is the closing tag for content div under Carbon Flux -->
</div> <!-- This is the closing tag for collapsibleContainer div under Carbon Flux -->
<!-- END Carbon Flux section: -->
 