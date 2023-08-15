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

    .flex-container {
  display: flex;
  flex-wrap: nowrap;
  justify-content: space-between;
  align-items: flex-start;
}

.flex-item {
  flex: 1;
  margin: 10px;
  text-align: center;
}

.vertical-divider {
  width: 2px;
  background-color: darkgrey;
  height: 100%;
  margin: 0 10px;
}



.collapsible.relativehum {
  background: linear-gradient(to right, #FF7F00, #FFB347);
  color: white;
}

.collapsible.precip {
  background: linear-gradient(to right, #00008b, #008b8b);
  color: white;
}

.collapsible.radiation {
  background: linear-gradient(to right, #FFD700, #FFFFE0);
  color: white;
}

.collapsible.temperature {
  background: linear-gradient(to right, #b20000, #e67300); /* Darker gradient background */
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
.collapsible.carbonflux {
  background: linear-gradient(to right, #0074D9, #7FDBFF); /* Gradient background from blue to light blue */
  color: white;
}


.collapsible.sensible {
  background: linear-gradient(to right, #8B008B, #DA70D6); /* Gradient background from dark purple to light purple */
  color: white;
}

.collapsible.latent {
  background: linear-gradient(to right, #0074D9, #7FDBFF); /* Gradient background from dark blue to light blue */
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


<!-- Start Carbon Flux section: -->
<div class="collapsibleContainer">
<button class="collapsible carbonflux">Carbon Flux</button>
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
  
  <div class="vertical-divider"></div>
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







<!-- Start Relative Humidity section: -->
<div class="collapsibleContainer">
<button class="collapsible relativehum">Relative Humidity</button>
<div class="content">

<!-- Start RH_tmpr_rh_mean: -->
<h2>Relative Humidity (RH_tmpr_rh_mean)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_RH_tmpr_rh_mean_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_RH_tmpr_rh_mean_yesterday.png" alt="Fluxtower1_2 - RH_tmpr_rh_mean yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_RH_tmpr_rh_mean_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_RH_tmpr_rh_mean_today.png" alt="Fluxtower1_2 - RH_tmpr_rh_mean today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_RH_tmpr_rh_mean_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_RH_tmpr_rh_mean_yesterday.png" alt="Fluxtower3_4 - RH_tmpr_rh_mean yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_RH_tmpr_rh_mean_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_RH_tmpr_rh_mean_today.png" alt="Fluxtower3_4 - RH_tmpr_rh_mean today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end RH_tmpr_rh_mean: -->
            

</div> <!-- This is the closing tag for content div under Relative Humidity -->
</div> <!-- This is the closing tag for collapsibleContainer div under Relative Humidity -->
<!-- END Relative Humidity section: -->




<!-- Start Precipitation section: -->
<div class="collapsibleContainer">
<button class="collapsible precip">Precipitation</button>
<div class="content">

<!-- Start precip_Tot: -->
<h2>Precipitation (precip_Tot)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_precip_Tot_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_precip_Tot_yesterday.png" alt="Fluxtower1_2 - precip_Tot yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_precip_Tot_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_precip_Tot_today.png" alt="Fluxtower1_2 - precip_Tot today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_precip_Tot_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_precip_Tot_yesterday.png" alt="Fluxtower3_4 - precip_Tot yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_precip_Tot_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_precip_Tot_today.png" alt="Fluxtower3_4 - precip_Tot today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end precip_Tot: -->
            

</div> <!-- This is the closing tag for content div under Precipitation -->
</div> <!-- This is the closing tag for collapsibleContainer div under Precipitation -->
<!-- END Precipitation section: -->
 
 
 
<!-- Start Net Radiation section: -->
<div class="collapsibleContainer">
<button class="collapsible radiation">Net Radiation</button>
<div class="content">

<!-- Start albedo_Avg: -->
<h2>Average Albedo (albedo_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_albedo_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_albedo_Avg_yesterday.png" alt="Fluxtower1_2 - albedo_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_albedo_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_albedo_Avg_today.png" alt="Fluxtower1_2 - albedo_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_albedo_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_albedo_Avg_yesterday.png" alt="Fluxtower3_4 - albedo_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_albedo_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_albedo_Avg_today.png" alt="Fluxtower3_4 - albedo_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end albedo_Avg: -->


<!-- Start Rn_Avg: -->
<h2>Average Net Radiation (Rn_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Rn_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Rn_Avg_yesterday.png" alt="Fluxtower1_2 - Rn_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Rn_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Rn_Avg_today.png" alt="Fluxtower1_2 - Rn_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Rn_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Rn_Avg_yesterday.png" alt="Fluxtower3_4 - Rn_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Rn_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Rn_Avg_today.png" alt="Fluxtower3_4 - Rn_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Rn_Avg: -->



<!-- Start par_Avg: -->
<h2>Average PAR (par_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_par_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_par_Avg_yesterday.png" alt="Fluxtower1_2 - par_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_par_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_par_Avg_today.png" alt="Fluxtower1_2 - par_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_par_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_par_Avg_yesterday.png" alt="Fluxtower3_4 - par_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_par_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_par_Avg_today.png" alt="Fluxtower3_4 - par_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end par_Avg: -->


<!-- Start Rl_incoming_Avg: -->
<h2>Average Incoming Rl (Rl_incoming_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Rl_incoming_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Rl_incoming_Avg_yesterday.png" alt="Fluxtower1_2 - Rl_incoming_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Rl_incoming_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Rl_incoming_Avg_today.png" alt="Fluxtower1_2 - Rl_incoming_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Rl_incoming_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Rl_incoming_Avg_yesterday.png" alt="Fluxtower3_4 - Rl_incoming_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Rl_incoming_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Rl_incoming_Avg_today.png" alt="Fluxtower3_4 - Rl_incoming_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Rl_incoming_Avg: -->
            



<!-- Start Rl_outgoing_Avg: -->
<h2>Average Outgoing Rl (Rl_outgoing_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Rl_outgoing_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Rl_outgoing_Avg_yesterday.png" alt="Fluxtower1_2 - Rl_outgoing_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Rl_outgoing_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Rl_outgoing_Avg_today.png" alt="Fluxtower1_2 - Rl_outgoing_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Rl_outgoing_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Rl_outgoing_Avg_yesterday.png" alt="Fluxtower3_4 - Rl_outgoing_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Rl_outgoing_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Rl_outgoing_Avg_today.png" alt="Fluxtower3_4 - Rl_outgoing_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Rl_outgoing_Avg: -->


<!-- Start Rs_incoming_Avg: -->
<h2>Average Incoming Rs (Rs_incoming_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Rs_incoming_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Rs_incoming_Avg_yesterday.png" alt="Fluxtower1_2 - Rs_incoming_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Rs_incoming_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Rs_incoming_Avg_today.png" alt="Fluxtower1_2 - Rs_incoming_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Rs_incoming_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Rs_incoming_Avg_yesterday.png" alt="Fluxtower3_4 - Rs_incoming_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Rs_incoming_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Rs_incoming_Avg_today.png" alt="Fluxtower3_4 - Rs_incoming_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Rs_incoming_Avg: -->


<!-- Start Rs_outgoing_Avg: -->
<h2>Average Outgoing Rs (Rs_outgoing_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Rs_outgoing_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Rs_outgoing_Avg_yesterday.png" alt="Fluxtower1_2 - Rs_outgoing_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Rs_outgoing_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Rs_outgoing_Avg_today.png" alt="Fluxtower1_2 - Rs_outgoing_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Rs_outgoing_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Rs_outgoing_Avg_yesterday.png" alt="Fluxtower3_4 - Rs_outgoing_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Rs_outgoing_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Rs_outgoing_Avg_today.png" alt="Fluxtower3_4 - Rs_outgoing_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Rs_outgoing_Avg: -->
            
            

</div> <!-- This is the closing tag for content div under Net Radiation -->
</div> <!-- This is the closing tag for collapsibleContainer div under Net Radiation -->
<!-- END Net Radiation section: -->


<!-- Start Latent Heat Flux section: -->
<div class="collapsibleContainer">
<button class="collapsible latent">Latent Heat Flux</button>
<div class="content">

<!-- Start LE_li_irga: -->
<h2>Latent Heat Flux (LE_li_irga)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_LE_li_irga_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_LE_li_irga_yesterday.png" alt="Fluxtower1_2 - LE_li_irga yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_LE_li_irga_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_LE_li_irga_today.png" alt="Fluxtower1_2 - LE_li_irga today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_LE_li_irga_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_LE_li_irga_yesterday.png" alt="Fluxtower3_4 - LE_li_irga yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_LE_li_irga_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_LE_li_irga_today.png" alt="Fluxtower3_4 - LE_li_irga today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end LE_li_irga: -->

<!-- Start LE_li_wpl: -->
<h2>Latent Heat Flux (LE_li_wpl)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_LE_li_wpl_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_LE_li_wpl_yesterday.png" alt="Fluxtower1_2 - LE_li_wpl yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_LE_li_wpl_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_LE_li_wpl_today.png" alt="Fluxtower1_2 - LE_li_wpl today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_LE_li_wpl_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_LE_li_wpl_yesterday.png" alt="Fluxtower3_4 - LE_li_wpl yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_LE_li_wpl_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_LE_li_wpl_today.png" alt="Fluxtower3_4 - LE_li_wpl today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end LE_li_wpl: -->
            
            

</div> <!-- This is the closing tag for content div under Latent Heat Flux -->
</div> <!-- This is the closing tag for collapsibleContainer div under Latent Heat Flux -->
<!-- END Latent Heat Flux section: -->
 
 
 <!-- Sensible Heat Flux Flux section: -->
<div class="collapsibleContainer">
<button class="collapsible sensible">Sensible Heat Flux</button>
<div class="content">

<!-- Start Hs: -->
<h2>Hs (Hs)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Hs_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Hs_yesterday.png" alt="Fluxtower1_2 - Hs yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Hs_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Hs_today.png" alt="Fluxtower1_2 - Hs today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Hs_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Hs_yesterday.png" alt="Fluxtower3_4 - Hs yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Hs_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Hs_today.png" alt="Fluxtower3_4 - Hs today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Hs: -->
            

</div> <!-- This is the closing tag for content div under Latent Heat Flux -->
</div> <!-- This is the closing tag for collapsibleContainer div under Latent Heat Flux -->
<!-- END sensible Flux section: -->



<!-- Wind section: -->
<div class="collapsibleContainer">
<button class="collapsible wind">Wind</button>
<div class="content">

<!-- Start u_star: -->
<h2>U* (u_star)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_u_star_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_u_star_yesterday.png" alt="Fluxtower1_2 - u_star yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_u_star_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_u_star_today.png" alt="Fluxtower1_2 - u_star today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_u_star_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_u_star_yesterday.png" alt="Fluxtower3_4 - u_star yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_u_star_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_u_star_today.png" alt="Fluxtower3_4 - u_star today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end u_star: -->
            
<!-- Start wnd_spd: -->
<h2>Wind Speed (wnd_spd)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_wnd_spd_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_wnd_spd_yesterday.png" alt="Fluxtower1_2 - wnd_spd yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_wnd_spd_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_wnd_spd_today.png" alt="Fluxtower1_2 - wnd_spd today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_wnd_spd_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_wnd_spd_yesterday.png" alt="Fluxtower3_4 - wnd_spd yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_wnd_spd_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_wnd_spd_today.png" alt="Fluxtower3_4 - wnd_spd today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end wnd_spd: -->

<!-- Start Uz_Avg: -->
<h2>Average Uz (Uz_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Uz_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Uz_Avg_yesterday.png" alt="Fluxtower1_2 - Uz_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Uz_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Uz_Avg_today.png" alt="Fluxtower1_2 - Uz_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Uz_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Uz_Avg_yesterday.png" alt="Fluxtower3_4 - Uz_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Uz_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Uz_Avg_today.png" alt="Fluxtower3_4 - Uz_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Uz_Avg: -->
            
            
<!-- Start Uz_stdev: -->
<h2>Uz Standard Deviation (Uz_stdev)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Uz_stdev_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Uz_stdev_yesterday.png" alt="Fluxtower1_2 - Uz_stdev yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Uz_stdev_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Uz_stdev_today.png" alt="Fluxtower1_2 - Uz_stdev today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Uz_stdev_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Uz_stdev_yesterday.png" alt="Fluxtower3_4 - Uz_stdev yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Uz_stdev_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Uz_stdev_today.png" alt="Fluxtower3_4 - Uz_stdev today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Uz_stdev: -->
            
            
            
            

</div> <!-- This is the closing tag for content div under Latent Heat Flux -->
</div> <!-- This is the closing tag for collapsibleContainer div under Latent Heat Flux -->
<!-- END Latent Heat Flux section: -->



<!-- Wind section: -->
<div class="collapsibleContainer">
<button class="collapsible soil">Soil</button>
<div class="content">

<!-- Start Soil Water Content Section-->
<h1>Soil Water Content</h1>
<!-- Start soil_water_Avg.1: -->
<h2>Soil Water Content, Level 1 (soil_water_Avg.1)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_soil_water_Avg.1_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_soil_water_Avg.1_yesterday.png" alt="Fluxtower1_2 - soil_water_Avg.1 yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_soil_water_Avg.1_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_soil_water_Avg.1_today.png" alt="Fluxtower1_2 - soil_water_Avg.1 today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_soil_water_Avg.1_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_soil_water_Avg.1_yesterday.png" alt="Fluxtower3_4 - soil_water_Avg.1 yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_soil_water_Avg.1_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_soil_water_Avg.1_today.png" alt="Fluxtower3_4 - soil_water_Avg.1 today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end soil_water_Avg.1: -->

<!-- Start soil_water_Avg.2: -->
<h2>Soil Water Content, Level 2 (soil_water_Avg.2)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_soil_water_Avg.2_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_soil_water_Avg.2_yesterday.png" alt="Fluxtower1_2 - soil_water_Avg.2 yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_soil_water_Avg.2_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_soil_water_Avg.2_today.png" alt="Fluxtower1_2 - soil_water_Avg.2 today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_soil_water_Avg.2_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_soil_water_Avg.2_yesterday.png" alt="Fluxtower3_4 - soil_water_Avg.2 yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_soil_water_Avg.2_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_soil_water_Avg.2_today.png" alt="Fluxtower3_4 - soil_water_Avg.2 today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end soil_water_Avg.2: -->


<!-- Start soil_water_Avg.3: -->
<h2>Soil Water Content, Level 3 (soil_water_Avg.3)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_soil_water_Avg.3_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_soil_water_Avg.3_yesterday.png" alt="Fluxtower1_2 - soil_water_Avg.3 yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_soil_water_Avg.3_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_soil_water_Avg.3_today.png" alt="Fluxtower1_2 - soil_water_Avg.3 today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_soil_water_Avg.3_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_soil_water_Avg.3_yesterday.png" alt="Fluxtower3_4 - soil_water_Avg.3 yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_soil_water_Avg.3_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_soil_water_Avg.3_today.png" alt="Fluxtower3_4 - soil_water_Avg.3 today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end soil_water_Avg.3: -->
            
<!-- Start Soil Temp: -->
<h1>Soil Temperature</h1>

<!-- Start Tsoil1_Avg: -->
<h2>Soil Temperature, Level 1 (Tsoil1_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil1_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil1_Avg_yesterday.png" alt="Fluxtower1_2 - Tsoil1_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil1_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil1_Avg_today.png" alt="Fluxtower1_2 - Tsoil1_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil1_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil1_Avg_yesterday.png" alt="Fluxtower3_4 - Tsoil1_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil1_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil1_Avg_today.png" alt="Fluxtower3_4 - Tsoil1_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Tsoil1_Avg: -->
            
<!-- Start Tsoil2_Avg: -->
<h2>Soil Temperature, Level 2 (Tsoil2_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil2_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil2_Avg_yesterday.png" alt="Fluxtower1_2 - Tsoil2_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil2_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil2_Avg_today.png" alt="Fluxtower1_2 - Tsoil2_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil2_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil2_Avg_yesterday.png" alt="Fluxtower3_4 - Tsoil2_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil2_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil2_Avg_today.png" alt="Fluxtower3_4 - Tsoil2_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Tsoil2_Avg: -->

<!-- Start Tsoil3_Avg: -->
<h2>Soil Temperature, Level 3 (Tsoil3_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil3_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil3_Avg_yesterday.png" alt="Fluxtower1_2 - Tsoil3_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil3_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil3_Avg_today.png" alt="Fluxtower1_2 - Tsoil3_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil3_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil3_Avg_yesterday.png" alt="Fluxtower3_4 - Tsoil3_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil3_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil3_Avg_today.png" alt="Fluxtower3_4 - Tsoil3_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Tsoil3_Avg: -->
            
            
<!-- Start Tsoil4_Avg: -->
<h2>Soil Temperature, Level 4 (Tsoil4_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil4_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil4_Avg_yesterday.png" alt="Fluxtower1_2 - Tsoil4_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil4_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_Tsoil4_Avg_today.png" alt="Fluxtower1_2 - Tsoil4_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil4_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil4_Avg_yesterday.png" alt="Fluxtower3_4 - Tsoil4_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil4_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_Tsoil4_Avg_today.png" alt="Fluxtower3_4 - Tsoil4_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end Tsoil4_Avg: -->
            
            
            

</div> <!-- This is the closing tag for content div under Soil -->
</div> <!-- This is the closing tag for collapsibleContainer div under Soil -->
<!-- END Soil section: -->
 
 
 
 <!-- battery section: -->
<div class="collapsibleContainer">
<button class="collapsible battery">Battery</button>
<div class="content">


<!-- Start batt_volt_Avg: -->
<h2>Battery Data (batt_volt_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_batt_volt_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_batt_volt_Avg_yesterday.png" alt="Fluxtower1_2 - batt_volt_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_batt_volt_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_batt_volt_Avg_today.png" alt="Fluxtower1_2 - batt_volt_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_batt_volt_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_batt_volt_Avg_yesterday.png" alt="Fluxtower3_4 - batt_volt_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_batt_volt_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_batt_volt_Avg_today.png" alt="Fluxtower3_4 - batt_volt_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end batt_volt_Avg: -->
            
            
<!-- Start cdm_batt_volt_Avg: -->
<h2>CDM Battery Data (cdm_batt_volt_Avg)</h2>

<div class="flex-container">

  <!-- Fluxtower 1_2 Plots -->
  <div>
    <h4>Flux Towers 1 & 2 - Yesterday</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_cdm_batt_volt_Avg_yesterday.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_cdm_batt_volt_Avg_yesterday.png" alt="Fluxtower1_2 - cdm_batt_volt_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 1 & 2 - Today</h4>
    <a href="fluxtower1_2/daily_plots/fluxtower1_2_cdm_batt_volt_Avg_today.png" target="_blank">
      <img src="fluxtower1_2/daily_plots/fluxtower1_2_cdm_batt_volt_Avg_today.png" alt="Fluxtower1_2 - cdm_batt_volt_Avg today" onerror="imgError(this);">
    </a>
  </div>

  <div style="width: 2px; background-color: darkgrey; height: 100%; margin: 0 10px;"></div>

  <!-- Fluxtower 3_4 Plots -->
  <div>
    <h4>Flux Towers 3 & 4 - Yesterday</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_cdm_batt_volt_Avg_yesterday.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_cdm_batt_volt_Avg_yesterday.png" alt="Fluxtower3_4 - cdm_batt_volt_Avg yesterday" onerror="imgError(this);">
    </a>
  </div>

  <div>
    <h4>Flux Towers 3 & 4 - Today</h4>
    <a href="fluxtower3_4/daily_plots/fluxtower3_4_cdm_batt_volt_Avg_today.png" target="_blank">
      <img src="fluxtower3_4/daily_plots/fluxtower3_4_cdm_batt_volt_Avg_today.png" alt="Fluxtower3_4 - cdm_batt_volt_Avg today" onerror="imgError(this);">
    </a>
  </div>

</div>

<!-- end cdm_batt_volt_Avg: -->
            

</div> <!-- This is the closing tag for content div under Soil -->
</div> <!-- This is the closing tag for collapsibleContainer div under Soil -->
<!-- END Battery section: -->
 
