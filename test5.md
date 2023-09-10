---
layout: post
title: Flux Tower 1
description: Flux Tower 1
nav-menu: true
---

<style>
/* Styling for the Toggle Technical Data button */
.collapsible {
    color: white;
    background-image: linear-gradient(to right, #764BA2, #667EEA);
    border: none;
    cursor: pointer;
    padding: 10px 15px;
    border-radius: 4px;
    text-align: center;
    display: block; /* This ensures it takes the full width */
    margin: auto;   /* This will center the button if it's not full width */
    width: 100%;    /* This sets the button to take the full width of its parent container */
    line-height: 40px; 
}


.container {
    visibility: hidden;
    height: 0;
    overflow: hidden;  /* To ensure the content is hidden when the height is set to 0 */
}
    .centered-text {
    text-align: center;
}


/* Styling for the View in full View button */
.full-view-button {
    display: block;
    margin: 20px auto; /* centers the button horizontally */
    background-image: linear-gradient(to right, #121821, #222e40);  /* darker grays */
    color: white;
    border: none;
    cursor: pointer;
    padding: 10px 15px;
    border-radius: 4px;
    text-align: center;
    text-decoration: none; /* Since it will be an anchor tag */
    font-weight: bold; /* Bold text */
}

 /* Styling for the icons */
.icon {
    color: white;
    border: none;
    cursor: pointer;
    padding: 10px; 
    width: 120px;   /* fixed width */
    height: 120px;  /* fixed height */
    border-radius: 50%; 
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 10px;
    background-size: 100%;
    font-weight: bold;
    font-size: 1em;
    background-color: transparent; /* Removes any default background color */
    outline: none; /* Removes focus outline which browsers apply */
}

.icon-daily { 
    background: linear-gradient(to right, #85a3e0, #1e57a8); 
}

.icon-weekly { 
    background: linear-gradient(to right, #a57ad8, #501a7a); 
}

.icon-monthly { 
    background: linear-gradient(to right, #7cd68f, #2a8c39); 
}

.icon-container {
    text-align: center;         
}
    .table-container {
    display: none;
}


</style>




<!-- Icons/buttons -->
<div class="icon-container">
    <button class="icon icon-daily" onclick="showTable('daily')">Daily</button>
    <button class="icon icon-weekly" onclick="showTable('weekly')">Weekly</button>
    <button class="icon icon-monthly" onclick="showTable('monthly')">Monthly</button>
</div>


<!-- Tables (they're iframes in your case) -->
<div id="daily-table" class="table-container">
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_daily_fluxtower1.html"></iframe>
     <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
</div>
<div id="weekly-table" class="table-container">
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_weekly_fluxtower1.html"></iframe>
     <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
</div>
<div id="monthly-table" class="table-container">
    <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_monthly_fluxtower1.html"></iframe>
     <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
</div>



<!-- More Technical Data -->
<div class="collapsible-container">
    <button class="collapsible">More Technical Data</button>
    <div class="container">
             <h3>This plot shows multiple types of variables coming in from the site. Just click your variable of interest to see the pattern across the entire period of data collection!</h3>
    
        <div class="html-object">
            <iframe width="100%" height="800" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1.html"></iframe>
     
            <!-- View in full View Button -->
<a href="https://kesondrakey.github.io/longterm_plots/longterm_plotly_fluxtower1.html" class="full-view-button">View in full View</a>
       
        </div>
    </div>
</div>








<script>
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
// for the icons
    function showTable(tableType) {
    // Hide all tables first
    const tables = document.querySelectorAll('.table-container');
    tables.forEach(table => {
        table.style.display = 'none';
    });

    // Show the selected table
    document.getElementById(tableType + '-table').style.display = 'block';
}


</script>
