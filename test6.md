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
    background-image: linear-gradient(to right, #764BA2, #667EEA);
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
/* Pseudo-element for icon background */
.icon::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    border-radius: 50%; /* inherit the rounded shape */
    z-index: -1; /* sit behind the text/content */
    background: inherit; /* inherit the gradient of the parent */
    transition: filter 0.2s;
}

    .icon.selected {
    color: white;
    filter: brightness(60%); /* darken the color */
}

.collapsible.selected {
    filter: brightness(60%); /* darken the color */
}
    
/* Styling for the icons */
.icon::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    border-radius: 50%; /* inherit the rounded shape */
    z-index: -1; /* sit behind the text/content */
    background: inherit; /* inherit the gradient of the parent */
    transition: filter 0.2s;
}


/* Styling for the icons */
.icon {
    position: relative;
    color: white;
    text-transform: none;  
    cursor: pointer;
    padding: 10px; 
    width: 120px;   
    height: 120px;  
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


.icon-daily { 
    background: linear-gradient(to right, #85a3e0, #1e57a8); 
}
    .icon-daily.selected { 
    background: linear-gradient(to right, #6479bd, #1e4d8a);
}


.icon-weekly { 
    background: linear-gradient(to right, #a57ad8, #501a7a); 
}
    .icon-weekly.selected { 
    background: linear-gradient(to right, #8f66c4, #461260); 
}


.icon-monthly { 
    background: linear-gradient(to right, #7cd68f, #2a8c39); 
}
    .icon-monthly.selected { 
    background: linear-gradient(to right, #67bf78, #257c2d); 
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

    
</style>

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



<!-- More Technical Data -->
<div class="collapsible-container">
    <button class="collapsible">More Technical Data</button>
    <div class="container">
             <h5>This plot shows multiple types of variables coming in from the site. Just click your variable of interest to see the pattern across the entire period of data collection!</h5>
    
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

    // If the selected table was not already visible, show it
    if (!isAlreadyVisible) {
        selectedTable.style.display = 'block';
    }

    // Remove selected class from all icons
    icons.forEach(icon => {
        icon.classList.remove('selected');
    });

    // Add the selected class to the clicked icon
    document.querySelector('.icon-' + tableType).classList.add('selected');

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
