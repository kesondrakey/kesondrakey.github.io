---
layout: post
title: Flux Tower 1
description: Flux Tower 1
nav-menu: true
---

<html>
<head>
  <style>
    .grid-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); /* Make the grid responsive */
        grid-gap: 1em;
    }

    .grid-item {
        position: relative;
        padding-top: 100%; /* Maintain the aspect ratio */
        overflow: hidden;
        border: none; /* Ensure no borders are added to the grid item */
    }

    .grid-item a {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        text-decoration: none;
        color: white;
        display: flex;
        align-items: center;
        justify-content: center;
        background: rgba(0, 0, 0, 0.7); /* Add a semi-transparent overlay */
        border: none; /* Ensure no borders are added to the link */
    }

    .toggle-icons {
        display: flex;
        justify-content: center;
        gap: 15px;
        margin-bottom: 20px;
    }

    .icon {
        width: 100px; /* Made icons larger */
        height: 100px; /* Made icons larger */
        border-radius: 50%; /* Makes them circular */
        cursor: pointer; /* Indicates they're clickable */
        display: flex;
        align-items: center; /* Center the img within the circular div */
        justify-content: center;
        overflow: hidden; /* Ensure the img doesn't overflow out of the circular div */
    }

    .icon-daily {
        background-color: lightblue;
    }

    .icon-weekly {
        background-color: purple;
    }

    .icon-monthly {
        background-color: green;
    }

    .icon img {
        width: 90%; /* Adjusted size */
        height: auto; /* Maintain the aspect ratio */
    }

    .grid-item img {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        border: none; /* Ensure no borders are added to the image */
        outline: none; /* Ensure no outlines are added to the image */
    }
     .data-table {
        display: none;  /* Set the data tables to not display by default */
    }

    .html-object iframe {
        width: 100%;
        max-height: calc(50vw); /* Changed height to max-height */
    }

    .grid-item span {
        font-size: 2rem; /* Adjust the font size */
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add a text shadow for better visibility */
        z-index: 2;
        font-weight: bold; /* Make the text bolder */
    }
    .full-screen-text-container {
    background-color: black;  /* Set background to black */
    color: blue;              /* Set text color to blue */
    text-align: center;       /* Center the text */
    padding: 10px;            /* Add some padding for better appearance */
    }

    .full-screen-link {
    color: blue;             /* Make the link text blue */
    text-decoration: underline;  /* Underline the link */
    }

    .full-screen-link:hover {
    color: deepskyblue;     /* Change color on hover for better user feedback */
    }


    .full-screen-link:hover {
      background-color: #0056b3;  /* Darker blue on hover */
  }


    /* Larger and bolder text for desktop */
    @media (min-width: 768px) {
        .grid-item span {
            font-size: 3rem;
            font-weight: 900;
        }

        .collapsible {
            background-color: transparent;
            color: white;
            text-align: center;
            padding: 15px;
            border: 2px solid white;
            font-size: 20px;
            display: flex; /* Change from block to flex */
            justify-content: center; /* Center content horizontally */
            align-items: center; /* Center content vertically */
            margin: 20px auto;
            cursor: pointer;
            transition: background-color 0.5s, color 0.5s, border-color 0.5s; /* Added transition for border color */
            width: 70%; /* Adjust as needed */
        }
    .icon-label {
      position: absolute;
      top: -25px; /* Adjust this as needed */
      width: 100%;
      text-align: center;
      font-size: 14px;
      font-weight: bold;
    }

        .collapsible:hover {
            color: gray;
            border-color: gray; /* Border color changes to gray on hover */
        }



    .content {
        display: none;
    }
    table.dataTable {
    background-color: darkgray;
    color: white;
 }

    table.dataTable tbody td {
     color: white;
}

    table.dataTable thead th {
      background-color: gray;
      color: white;
}
</style>
</head>
<body>
  

  <h1>Long Term Data</h1>
  <div class="container">
    <div class="html-object">
      <!-- Here's where you add the iframe to embed the Plotly graph -->
      <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/longterm_daily_plotly_fluxtower1.html">
      </iframe>
      <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
    </div>
  </div> 


 
<!-- Toggle Icons -->
<div class="toggle-icons">
    <div class="icon icon-daily">
        <span class="icon-label">Daily</span> <!-- The new label -->
        <img src="images/daily.jpg" alt="Daily" data-view="daily">
    </div>
    <div class="icon icon-weekly">
        <span class="icon-label">Weekly</span> <!-- The new label -->
        <img src="images/weekly.png" alt="Weekly" data-view="weekly">
    </div>
    <div class="icon icon-monthly">
        <span class="icon-label">Monthly</span> <!-- The new label -->
        <img src="images/monthly.jpg" alt="Monthly" data-view="monthly">
    </div>
</div>



<!-- Data Tables -->
  <div class="data-table" data-view="daily">
      <h1>Daily Data</h1>
      <div class="html-object">
          <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_daily_fluxtower1.html"></iframe>
        <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
      </div>
  </div>
  <div class="data-table" data-view="weekly">
      <h1>Weekly Data</h1>
      <div class="html-object">
          <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_weekly_fluxtower1.html"></iframe>
        <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
      </div>
  </div>
  <div class="data-table" data-view="monthly">
      <h1>Monthly Data</h1>
      <div class="html-object">
          <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/datatable_monthly_fluxtower1.html"></iframe>
        <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
      </div>
  </div>

<button class="collapsible">More Technical Data</button>
<div class="content">
    <h1>Long Term Data</h1>
    <div class="container">
        <div class="html-object">
            <!-- Here's where you add the iframe to embed the Plotly graph -->
            <iframe width="100%" height="600" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1.html"></iframe>
               <h4><i>*Click your variable of interest (currently works better on mobile devices)</i></h4>
<div class="full-screen-text-container">
    <p>For Desktop users, <a href="https://kesondrakey.github.io/longterm_plots/longterm_plotly_fluxtower1.html" target="_blank" class="full-screen-link">click this link</a> to view in full size!</p>
</div>

        </div>
    </div>

</div>

 <script>
       // Collapsible Functionality
var coll = document.getElementsByClassName("collapsible");
for (let i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var content = this.nextElementSibling;
        content.style.display = content.style.display === "block" ? "none" : "block";
    });
}

// Data View Toggle
const icons = document.querySelectorAll('.icon img');  // target the img inside the icon
const tables = document.querySelectorAll('.data-table');

icons.forEach(icon => {
    icon.addEventListener('click', function() {
        const view = this.getAttribute('data-view');

        tables.forEach(table => {
            if (table.getAttribute('data-view') === view) {
                table.style.display = table.style.display === "none" ? "block" : "none";
            } else {
                table.style.display = "none";
            }
        });
    });
});

</script>

<!-- Rest of your content... -->
</body>
</html>
