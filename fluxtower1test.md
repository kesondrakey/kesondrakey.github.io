---
layout: post
title: Flux Tower 2
description: Flux Tower 2
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
       box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1),
                0px 1px 3px rgba(0, 0, 0, 0.2); /* outer and inner shadows */
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4); /* horizontal offset, vertical offset, blur radius, color */
    position: relative;
    color: white;
    text-transform: none;  
    cursor: pointer;
    padding: 10px; 
    width: 140px;   
    height: 140px;  
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
/* Daily */
.icon-daily { 
    background: linear-gradient(to right, #2E3192, #1BFFFF);
        box-shadow: inset 0px 4px 6px rgba(0, 0, 0, 0.1),
                inset 0px 1px 3px rgba(0, 0, 0, 0.2); /* inner shadows for selected */
}
.icon-daily.selected { 
    background: linear-gradient(to right, #1C1D59, #118B8B);
        box-shadow: inset 0px 4px 6px rgba(0, 0, 0, 0.1),
                inset 0px 1px 3px rgba(0, 0, 0, 0.2); /* inner shadows for selected */
}

/* Weekly */
.icon-weekly { 
    background: linear-gradient(to right, #2d006b, #660066);
}
.icon-weekly.selected { 
    background: linear-gradient(to right, #1C003E, #4C004D);
}

/* Monthly */
  
.icon-monthly { 
    background: linear-gradient(to right, #006600, #32CD32); /* Adjusted colors for better readability */
}
.icon-monthly.selected { 
    background: linear-gradient(to right, #004400, #228B22); /* Adjusted colors for better readability */
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

  /* Banner styles */
/* Make the image darker by adding this overlay */
.grid-item:before {
        height: 200px;
    width: 100%;
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(18, 24, 33, 0.4); /* Your specific dark blue with 70% opacity */
  z-index: 1;
}

/* Modify your existing text-overlay */
.text-overlay {
  transition: all 0.3s ease; /* Add transition for smooth changes */
  color: rgba(255, 255, 255, 0.7); /* Making text a bit transparent */
  transition: color 0.3s ease, border 0.3s ease; /* Added transition for border */
  position: absolute;
  top: 50%;
  right: 10%;
  transform: translateY(-50%);
  color: white;
  background-color: rgba(0, 0, 0, 0); /* Make it transparent */
  border: 2px solid white; /* White border */
  padding: 10px;
  border-radius: 4px;
  font-weight: bold; /* Make text bold */
  z-index: 2; /* Sit on top of the image and the dark overlay */
}

.text-overlay:hover {
    border: 2px solid lightblue; /* Add light blue border */
    color: white; /* Keep the text color white */
    background-color: rgba(0, 0, 0, 0.1); /* Slight background change to indicate hover */
}

/* Update grid-item to position the image and text overlay */
.grid-item {
    height: 200px;
    width: 100%;
  position: relative;
  margin: 0;
  padding: 0;
  border: none;
}

    .arrow-icon {
  z-index: 2;  /* Make sure this is higher than the z-index of the overlay */
  position: relative;
}

/* Style the image */
.grid-item img {
  object-fit: cover;  /* Adjust to make the image cover the entire div */
  width: 100%;  
  height: 100%;  /* Make it span full height */
        margin: 0;
    padding: 0;
}
    
        /* Adjust the margin of the summary heading */
    .summary-heading {
        margin-bottom: 10px; /* Adjust this value as needed to reduce/increase space */
    }

    .summary-box {
        background-color: #343A54;
        padding: 5px;
        color: white;
        margin-top: 10px; /* Adjust this value as needed to reduce/increase space */
    }


    /* Weather tiles */

.tile-container {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 20px;
}

.tile {
    background-color: #06012b;
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    color: white;
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 200px;
}

.tile .icon {
    font-size: 40px;
    margin-bottom: 10px;
}

.tile .title {
    font-weight: bold;
    margin-bottom: 10px;
    font-size: 1.2em;
}

.tile .value {
    font-size: 1.2em;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 5px;
}

</style>

<div style="background-color: #343A54; padding: 10px; color: white;"> <!-- Updated background color -->
    <strong>Note:</strong> This tower is located on a farm that uses cover crops! 🍃
</div>


<!-- Add the banner grid-container here -->
<div class="grid-container">
  <div class="grid-item">
    <a href="https://kesondrakey.github.io/FluxTowers">
      <img src="images/corn.jpeg" alt="clouds">
      <div class="text-overlay">Learn about Flux Towers &#8594;</div> <!-- Added arrow here -->
    </a>
  </div>
</div>


<!-- Your existing HTML content starts here -->





<!-- Your existing HTML content starts here -->
<h2 class="summary-heading">Summary</h2>
<div class="summary-box">
    <!-- Updated background color -->
    <strong>Flux Tower 2:</strong> This tower is situated on an Indiana farm focused on the cultivation of corn and soy. Unlike its companion site (Tower 1), this site employs interim cover crops, allowing for a unique insight into the environmental impact and dynamics of cover crop farming
</div>
<div class="summary-box">
    <!-- Updated background color -->
    <strong>Note:</strong> This page is best viewed on a desktop format
</div>

<i> </i>

<!-- Tiles for yesterday's information -->
<div class="tile-container">
    <div class="tile">
        <div class="title">Min Temp</div>
        <div class="icon">🌡️</div>
        <div class="value" id="min-temp">Loading...</div>
        <div class="unit">°F</div>
    </div>
    <div class="tile">
        <div class="title">Max Temp</div>
        <div class="icon">🌡️</div>
        <div class="value" id="max-temp">Loading...</div>
        <div class="unit">°F</div>
    </div>
    <div class="tile">
        <div class="title">Total Precipitation</div>
        <div class="icon">☔</div>
        <div class="value" id="total-precipitation">Loading...</div>
        <div class="unit">inches</div>
    </div>
    <div class="tile">
        <div class="title">Avg Soil Moisture</div>
        <div class="icon">🌱</div>
        <div class="value" id="avg-soil-moisture">Loading...</div>
        <div class="unit">m³/m³</div>
    </div>
</div>
<!-- End tiles for yesterday's information -->
<i> </i>

 <div class="tomorrow"
         data-location-id="125460"
         data-language="EN"
         data-unit-system="IMPERIAL"
         data-skin="dark"
         data-widget-type="upcoming"
         style="padding-bottom:22px;position:relative;">
        <a href="https://www.tomorrow.io/weather-api/"
           rel="nofollow noopener noreferrer"
           target="_blank"
           style="position: absolute; bottom: 0; transform: translateX(-50%); left: 50%;">
            <img alt="Powered by the Tomorrow.io Weather API"
                 src="https://weather-website-client.tomorrow.io/img/powered-by.svg"
                 width="250" height="18"/>
        </a>
    </div>

<div class="summary-box">
    <!-- Updated background color -->
    <strong>Note:</strong> This is a general location for Western Indiana for comparison
</div>




<iframe width="100%" height="670" frameborder="0" scrolling="no" src="files/Calendar2.html"></iframe>
<div style="background-color: #343A54; padding: 10px; color: white;">
    <!-- Updated background color -->
    <strong>Please note:</strong> In order to provide data with minimal latency (near real-time) for stakeholder use, the data provided here is in a raw format. This means it has not undergone any quality control and only minimal statistical processing (i.e., sums and averages).
</div>
<div style="margin-bottom:20px;"></div>




<!-- Table Section -->
<h3>Select your time period of interest to see the data in a table format:</h3>
<!-- Icons/buttons -->
<div class="icon-container">
    <button class="icon icon-daily" onclick="showTable('daily')">Daily</button>
    <button class="icon icon-weekly" onclick="showTable('weekly')">Weekly</button>
    <button class="icon icon-monthly" onclick="showTable('monthly')">Monthly</button>
</div>
 
<!-- Tables -->
<div id="daily-table" class="table-container" style="display: none;"> <!-- Set initial state to 'none' -->




    
<b>Daily Data Table:</b>
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_daily_fluxtower2.html"></iframe>
      <i>Units: Precipitation (sum, inches); Temperature (average, °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
        <div style="background-color: #343A54; padding: 10px; color: white;"> <!-- Updated background color -->
      <strong>Please note:</strong> In order to provide data with minimal latency (near real-time) for stakeholder use, the data provided here is in a raw format. This means it has not undergone any quality control and only minimal statistical processing (i.e., sums and averages).
    </div>
</div>

<div id="weekly-table" class="table-container" style="display: none;"> <!-- Set initial state to 'none' -->
    <b>Weekly Data Table: </b>
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_weekly_fluxtower2.html"></iframe>
            <i>Units: Precipitation (sum, inches); Temperature (average, °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
    <div style="background-color: #343A54; padding: 10px; color: white;"> <!-- Updated background color -->
      <strong>Please note:</strong> In order to provide data with minimal latency (near real-time) for stakeholder use, the data provided here is in a raw format. This means it has not undergone any quality control and only minimal statistical processing (i.e., sums and averages).
    </div>
    <div style="margin-bottom:20px;"></div>
</div>
<div id="monthly-table" class="table-container" style="display: none;"> <!-- Set initial state to 'none' -->
    <b>Monthly Data Table:</b>
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_monthly_fluxtower2.html"></iframe>
      <i>Units: Precipitation (sum, inches); Temperature (average, °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
    <div style="background-color: #343A54; padding: 10px; color: white;"> <!-- Updated background color -->
      <strong>Please note:</strong> In order to provide data with minimal latency (near real-time) for stakeholder use, the data provided here is in a raw format. This means it has not undergone any quality control and only minimal statistical processing (i.e., sums and averages).
    </div>
    <div style="margin-bottom:20px;"></div>
</div> 





<!-- Daily Plot - Simple Variables -->
<h2>Long Term Data</h2>
<h4>This plot is showing the daily data for rainfall, minimum and maximum temperature, and average soil moisture. Each variable is interactive - <i>just click the variable name and see!</i></h4>
<div class="plot-container">
  <div class="html-object">
    <!-- Here's where you add the iframe to embed the Plotly graph -->
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/longterm_daily_plotly_fluxtower2.html">
    </iframe>
          <i>Units: Precipitation (sum, inches); Temperature (average, °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
    <div style="background-color: #343A54; padding: 10px; color: white;"> <!-- Updated background color -->
      <strong>Please note:</strong> In order to provide data with minimal latency (near real-time) for stakeholder use, the data provided here is in a raw format. This means it has not undergone any quality control and only minimal statistical processing (i.e., sums and averages).
    </div>
      <div style="margin-bottom:20px;"></div>
  </div>
</div> 




<!-- Technical Data Section -->
<!-- More Technical Data -->
<div class="collapsible-container">
    <button class="collapsible">More Technical Data</button>
    <div class="container">
             <h5>Flux towers take a lot of different kinds of data. Just click your variable of interest to see the pattern across the entire period of data collection!</h5>
    
        <div class="html-object">
            <iframe width="100%" height="800" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower2.html"></iframe>
    <div style="background-color: #343A54; padding: 10px; color: white;"> <!-- Updated background color -->
      <strong>Please note:</strong> In order to provide data near real-time, the data provided here is in a raw format and has not undergone any quality control.
    </div>
      
            <!-- View in full View Button -->
<a href="https://kesondrakey.github.io/longterm_plots/longterm_plotly_fluxtower2.html" class="full-view-button">Click for full view</a>
       
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

// for weather
        (function(d, s, id) {
            if (d.getElementById(id)) {
                if (window.__TOMORROW__) {
                    window.__TOMORROW__.renderWidget();
                }
                return;
            }
            const fjs = d.getElementsByTagName(s)[0];
            const js = d.createElement(s);
            js.id = id;
            js.src = "https://www.tomorrow.io/v1/widget/sdk/sdk.bundle.min.js";

            fjs.parentNode.insertBefore(js, fjs);
        })(document, 'script', 'tomorrow-sdk');


    // for tiles at top of page
document.addEventListener("DOMContentLoaded", function() {
    // Fetch the HTML content (assuming the HTML file is accessible via a URL)
    fetch('longterm_plots/datatable_daily_fluxtower1.html')
      .then(response => response.text())
      .then(htmlContent => {
        // Parse the HTML content
        const parser = new DOMParser();
        const doc = parser.parseFromString(htmlContent, 'text/html');
        
        // Find the script tag that contains the JSON data
        const scriptTag = doc.querySelector('script[type="application/json"][data-for]');
        
        if (scriptTag) {
          // Load the JSON data
          const dataJson = JSON.parse(scriptTag.textContent);
          
          // Extract the data from the JSON
          const data = dataJson.x.data;
          
          // Get the dates and convert them to Date objects
          const dates = data[0].map(dateStr => new Date(dateStr));
          
          // Find the index for yesterday's date
          const yesterday = new Date();
          yesterday.setDate(yesterday.getDate() - 1);
          const yesterdayStr = yesterday.toISOString().split('T')[0];
          
          const index = data[0].indexOf(yesterdayStr);
          if (index !== -1) {
            // Extract data for yesterday
            const minTemp = data[1][index];
            const maxTemp = data[2][index];
            const totalPrecipitation = data[3][index];
            const avgSoilMoisture = data[4][index];
            
            // Update the HTML elements with the data
            document.getElementById('min-temp').textContent = minTemp;
            document.getElementById('max-temp').textContent = maxTemp;
            document.getElementById('total-precipitation').textContent = totalPrecipitation;
            document.getElementById('avg-soil-moisture').textContent = avgSoilMoisture;
          } else {
            document.getElementById('min-temp').textContent = 'No data';
            document.getElementById('max-temp').textContent = 'No data';
            document.getElementById('total-precipitation').textContent = 'No data';
            document.getElementById('avg-soil-moisture').textContent = 'No data';
          }
        } else {
          console.error('Script tag with JSON data not found.');
        }
      })
      .catch(error => console.error('Error fetching the HTML:', error));
});
  
</script>
