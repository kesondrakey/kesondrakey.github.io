---
layout: post
title: Flux Tower 1
description: Flux Tower 1
nav-menu: true
---

<style>
/* General resets for buttons and icons */
button, a, iframe {
    border: none;
    outline: none;
    box-shadow: none;
}

/* Styling for the Toggle Technical Data button */
.collapsible {
   background-image: linear-gradient(to right, #121821, #222e40);
    cursor: pointer;
    padding: 10px 15px;
    border-radius: 4px;
    text-align: center;
    text-transform: none;
    display: block;
    margin: auto;
    margin-bottom: 20px;  
    width: 100%;
    line-height: 40px;
    color: white;
}

/* Styles for container */
.container {
    visibility: hidden;
    height: 0;
    overflow: hidden;  
}

.centered-text {
    text-align: center;
}

/* Styling for the View in full View button */
.full-view-button {
    display: block;
    margin: 20px auto; 
    background-image: linear-gradient(to right, #121821, #222e40);
    color: white;
    cursor: pointer;
    padding: 10px 15px;
    border-radius: 4px;
    text-align: center;
    font-size: 1em; 
    text-decoration: none; 
    font-weight: bold; 
}



.collapsible.selected {
    filter: brightness(60%); /* darken the color */
}
    



/* Styling for the icons */
.icon {
    position: relative;
    color: white;
    text-transform: none;  
    cursor: pointer;
    padding: 10px; 
    width: 150px;   
    height: 150px;  
    border-radius: 50%; 
    overflow: hidden; 
    white-space: nowrap; 
    text-overflow: ellipsis; 
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 10px;
    background-size: 100%;
    letter-spacing: 1px; 
    font-size: 1em; 
    font-weight: bold;
    background-color: transparent; 
    transition: filter 0.2s;
}


/* Styling for the icons */

/* Daily - Blue tones */
.icon-daily { 
    background-image: linear-gradient(to right, #0A00FF 0%, #5278FF 100%);
}
.icon-daily.selected { 
    background-image: linear-gradient(to right, #0600B0 0%, #3B4CBF 100%);
}

/* Weekly - Purple tones */
.icon-weekly { 
    background-image: linear-gradient(to right, #682D90 0%, #9E62B0 100%);
}
.icon-weekly.selected { 
    background-image: linear-gradient(to right, #4C1F66 0%, #7D498A 100%);
}

/* Monthly - Green tones */
.icon-monthly { 
    background-image: linear-gradient(to right, #18621B 0%, #49A348 100%); 
}
.icon-monthly.selected { 
    background-image: linear-gradient(to right, #0E3D10 0%, #357A30 100%); 
}






.icon-container {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
}

    /* Space after the note */
iframe + i {
    display: block; /* ensure the element takes up its full width */
    margin-bottom: 20px; /* space below the note */
}

/* Ensuring text size consistency */
.icon, .collapsible {
    font-size: 1em;
}
    
.table-container {
    display: none;
}

.grid-container, .toggle-icons, .content {
    margin-bottom: 40px;
}
    
/* for static plot */
    .plot-container {
    visibility: visible;  // makes it visible
    height: auto;        // adjusts the height to its content
}


    
</style>

<!-- Daily Plot - Simple Variables -->
<h2>Long Term Data</h2>
<h4>This plot is showing the daily data for rainfall, minimum and maximum temperature, and average soil moisture. Each variable is interactive - <i> just click the variable name and see!</i></h4>
<div class="plot-container">
  <div class="html-object">
    <!-- Here's where you add the iframe to embed the Plotly graph -->
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/longterm_daily_plotly_fluxtower1.html">
    </iframe>
      <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
      <div style="margin-bottom:20px;"></div>
  </div>
</div> 



<!-- Table Section -->
<h3>Select your time period of interest to see the data in a table format:</h3>
<!-- Icons/buttons -->
<div class="icon-container">
    <button class="icon icon-daily" onclick="showTable('daily')">Daily</button>
    <button class="icon icon-weekly" onclick="showTable('weekly')">Weekly</button>
    <button class="icon icon-monthly" onclick="showTable('monthly')">Monthly</button>
</div>


<!-- Tables (they're iframes in your case) -->
<div id="daily-table" class="table-container" style="display: none;"> <!-- Set initial state to 'none' -->
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_daily_fluxtower1.html"></iframe>
     <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
    <div style="margin-bottom:20px;"></div>
</div>
<div id="weekly-table" class="table-container" style="display: none;"> <!-- Set initial state to 'none' -->
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_weekly_fluxtower1.html"></iframe>
     <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
    <div style="margin-bottom:20px;"></div>
</div>
<div id="monthly-table" class="table-container" style="display: none;"> <!-- Set initial state to 'none' -->
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_monthly_fluxtower1.html"></iframe>
     <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
    <div style="margin-bottom:20px;"></div>
</div>


<!-- Technical Data Section -->
<!-- More Technical Data -->
<div class="collapsible-container">
    <button class="collapsible">More Technical Data</button>
    <div class="container">
             <h5>Flux towers take a lot of different kinds of data. Just click your variable of interest to see the pattern across the entire period of data collection!</h5>
    
        <div class="html-object">
            <iframe width="100%" height="800" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1.html"></iframe>
     
            <!-- View in full View Button -->
<a href="https://kesondrakey.github.io/longterm_plots/longterm_plotly_fluxtower1.html" class="full-view-button">Click for full view</a>
       
        </div>
    </div>
</div>








<script>
function showTable(tableType) {
    const tables = document.querySelectorAll('.table-container');
    const selectedTable = document.getElementById(tableType + '-table');
    const icons = document.querySelectorAll('.icon');
    let isAlreadyVisible = (selectedTable.style.display === 'block');

    // Hide all tables first
    tables.forEach(table => {
        table.style.display = 'none';
    });

    // Remove selected class from all icons
    icons.forEach(icon => {
        icon.classList.remove('selected');
    });

    // If the selected table was not already visible, show it
    if (!isAlreadyVisible) {
        selectedTable.style.display = 'block';
        // Add the selected class to the clicked icon only if the table was not already visible
        document.querySelector('.icon-' + tableType).classList.add('selected');
    }
}


// Collapsible Functionality
var coll = document.getElementsByClassName("collapsible");
for (let i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function() {
        this.classList.toggle("active");
        
        // Adjust this part to target the .container inside the .collapsible-container
        var content = this.parentNode.querySelector(".container");

        if (content.style.visibility === "visible" || content.style.visibility === "") {
            content.style.visibility = "hidden";
            content.style.height = "0";  // this will collapse the space taken by the hidden content
        } else {
            content.style.visibility = "visible";
            content.style.height = "auto";  // revert to its original height
        }
    });
}


</script>
