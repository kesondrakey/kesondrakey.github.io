---
layout: post  
description: Flux Tower Comparisons
title: Flux Tower Comparisons
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


</style>




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
<h2 class="summary-heading">Comparisons</h2>
<div class="summary-box">
    <!-- Updated background color -->
    <strong>Flux Tower 1; companion site with flux tower 2</strong> 
    <!-- Updated background color -->
    <strong>Flux Tower 2: Cover Crop site 🍃; companion site with flux tower 1</strong> 
    <!-- Updated background color -->
    <strong>Flux Tower 3; companion site with flux tower 4</strong> 
    <!-- Updated background color -->
    <strong>Flux Tower 4: Cover Crop site 🍃; companion site with flux tower 3</strong> 
</div>
<div class="summary-box">
    <!-- Updated background color -->
    <strong>Note:</strong> This page is best viewed on a desktop format
</div>

<i> </i>


        
<h2>Flux Towers 1 and 2🍃 Comparison</h2>
<h4>This plot is showing the midday carbon flux (Fc) between sites Fc</h4>








<!-- Embed the image plot -->
<div class="plot-container">
    <img src="https://bloomington.iu.edu/images/samplegates.jpg" alt="Midday Carbon Flux Comparison">
</div>

<img src="https://indiana-my.sharepoint.com/personal/keyke_iu_edu/Documents/Github_Plots/T1_T2_Fc_Plot.png" alt="Hello">











<h4>Each variable is interactive - <i>just click the variable name and see!</i></h4>
<div class="plot-container">
  <div class="html-object">
    <!-- Here's where you add the iframe to embed the Plotly graph -->
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1_2.html">
    </iframe>
          <i>Units: Air Temperature (average, °C); Soil Water Content (averaged volumetric water fraction (m^3/m^3)) .... </i>
    <div style="background-color: #343A54; padding: 10px; color: white;"> <!-- Updated background color -->
      <strong>Please note:</strong> In order to provide data with minimal latency (near real-time) for stakeholder use, the data provided here is in a raw format. This means it has not undergone any quality control and only minimal statistical processing (i.e., sums and averages).
    </div>
      <div style="margin-bottom:20px;"></div>
  </div>
</div> 

<h2>Flux Towers 3 and 4🍃 Comparison</h2>
<h4>This plot is showing the daily data for rainfall, minimum and maximum temperature, and average soil moisture. Each variable is interactive - <i>just click the variable name and see!</i></h4>
<div class="plot-container">
  <div class="html-object">
    <!-- Here's where you add the iframe to embed the Plotly graph -->
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower3_4.html">
    </iframe>
          <i>Units: Air Temperature (average, °C); Soil Water Content (averaged volumetric water fraction (m^3/m^3)) .... </i>
    <div style="background-color: #343A54; padding: 10px; color: white;"> <!-- Updated background color -->
      <strong>Please note:</strong> In order to provide data with minimal latency (near real-time) for stakeholder use, the data provided here is in a raw format. This means it has not undergone any quality control and only minimal statistical processing (i.e., sums and averages).
    </div>
      <div style="margin-bottom:20px;"></div>
  </div>
</div> 




<b>Descriptive Statistics</b>
<iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/combined_stats_all_towers.html"></iframe>
<i>Units: Air Temperature (average, °C); Soil Water Content (averaged volumetric water fraction (m^3/m^3)) ... </i>
<div style="background-color: #343A54; padding: 10px; color: white;">
    <strong>Please note:</strong> In order to provide data with minimal latency (near real-time) for stakeholder use, the data provided here is in a raw format. This means it has not undergone any quality control and only minimal statistical processing (i.e., sums and averages).
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
