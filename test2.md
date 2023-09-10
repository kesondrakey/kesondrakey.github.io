---
layout: post
title: Flux Tower 1
description: Flux Tower 1
nav-menu: true
---

<html>
<head>
<style>
    /* ================= Basic Grid Styles ================= */
    .grid-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        grid-gap: 1em;
    }

    .grid-item {
        position: relative;
        padding-top: 100%;
        overflow: hidden;
        border: none;
    }

    .grid-item a,
    .grid-item img {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        border: none;
    }

    .grid-item img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        outline: none;
    }

    .grid-item span {
        font-size: 2rem;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        z-index: 2;
        font-weight: bold;
    }

    /* ================= Toggle Icons and Labels ================= */
    .toggle-icons {
        display: flex;
        justify-content: center;
        gap: 15px;
        margin: 20px 0;
    }

    .icon {
        width: 100px;
        height: 100px;
        border-radius: 50%;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        overflow: hidden;
    }

    .icon img {
        width: 90%;
        height: auto;
    }

    .icon-label {
        position: absolute;
        top: -25px;
        width: 100%;
        text-align: center;
        font-size: 14px;
        font-weight: bold;
    }

    .icon-daily { background-color: lightblue; }
    .icon-weekly { background-color: purple; }
    .icon-monthly { background-color: green; }

    /* ================= Collapsible Button and Full-Screen Styles ================= */
    .collapsible {
        background: linear-gradient(to right, #764BA2, #667EEA);
        color: white;
        border: none;
        display: block;
        margin: 20px auto;
        padding: 10px;
        width: 50%;
        text-align: center;
        cursor: pointer;
        transition: background-color 0.5s;
    }

    .collapsible:hover { background: linear-gradient(to right, #667EEA, #764BA2); }

    .full-screen-text-container {
        background: linear-gradient(to right, #764BA2, #667EEA);
        border-radius: 5px;
        margin: 20px auto;
        cursor: pointer;
    }

    .full-screen-link {
        display: block;
        padding: 10px;
        color: white;
        text-decoration: none;
        text-align: center;
    }

    .full-screen-link:hover { background-color: rgba(0, 0, 0, 0.2); }

    /* ================= Table Styles ================= */
    .data-table { display: none; }

    table.dataTable {
        background-color: darkgray;
        color: white;
    }

    table.dataTable thead th {
        background-color: gray;
        color: white;
    }

    table.dataTable tbody td { color: white; }

    .view-toggle-button {
        background-color: black;
        color: blue;
        padding: 10px 20px;
        border: none;
        margin: 10px;
        cursor: pointer;
        display: inline-block;
        transition: background-color 0.3s ease;
    }

    .view-toggle-button:hover {
        background-color: #1a1a1a;
        color: deepskyblue;
    }

    /* ================= Media Queries ================= */
    @media (min-width: 768px) {
        .grid-item span {
            font-size: 3rem;
            font-weight: 900;
        }
    }
</style>



<!-- Long Term Data -->
<div class="grid-container">
    <div class="grid-item">
         <div class="container">
            <div class="html-object">
                <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/longterm_daily_plotly_fluxtower1.html">
                </iframe>
                <i>*Precipitation (sum, inches); Temperature (average °F); Soil Water Content (soil_water_Avg.1.; averaged volumetric water fraction (m^3/m^3))</i>
            </div>
        </div>
    </div>
</div>


<!-- Compact Data Snapshot -->
<h2>Compact Data Snapshot</h2>

<!-- Choose Data View -->
<h3>Choose Data View:</h3>
<div class="toggle-icons">
    <div class="icon icon-daily">
        <span class="icon-label">Daily</span>
        <img src="images/daily.jpg" alt="Daily Icon">
    </div>
    <div class="icon icon-weekly">
        <span class="icon-label">Weekly</span>
        <img src="images/weekly.png" alt="Weekly Icon">
    </div>
    <div class="icon icon-monthly">
        <span class="icon-label">Monthly</span>
        <img src="images/monthly.jpg" alt="Monthly Icon">
    </div>
</div>


<!-- More Technical Data -->
<h3>More Technical Data</h3>
<button class="collapsible">Toggle Technical Data</button>
<div class="content">
    <div class="container">
        <div class="html-object">
            <iframe width="100%" height="800" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1.html"></iframe>
            <h4><i>*Simply click your variable of interest!</i></h4>
        </div>
    </div>
    <div class="full-screen-text-container">
        <a href="https://kesondrakey.github.io/longterm_plots/longterm_plotly_fluxtower1.html" class="full-screen-link">View in Full Screen</a>
        <h4><i>*Simply click your variable of interest!</i></h4>
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
</body>
</html>
