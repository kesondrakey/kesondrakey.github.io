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
      background: rgba(0,0,0,0.7); /* Add a semi-transparent overlay */
      border: none; /* Ensure no borders are added to the link */
    }
    .toggle-icons {
    display: flex;
    justify-content: center;
    gap: 15px;
    margin-bottom: 20px;
    }

    .icon {
    width: 50px;
    height: 50px;
    border-radius: 50%; /* Makes them circular */
    cursor: pointer; /* Indicates they're clickable */
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

    .grid-item span {
      font-size: 2rem; /* Adjust the font size */
      text-shadow: 2px 2px 4px rgba(0,0,0,0.5); /* Add a text shadow for better visibility */
      z-index: 2;
      font-weight: bold; /* Make the text bolder */
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
    .collapsible:hover {
    color: gray;
    border-color: gray; /* Border color changes to gray on hover */
    }

    .html-object iframe {
    width: 100%;
    height: calc(50vw); /* Change the value as necessary to adjust the iframe height based on the viewport width. */
    }

    @media (min-width: 768px) {
    .html-object iframe {
        height: 600px; /* Set a static height for larger screens, adjust as needed. */
    }
    }


    /* This is for hiding and showing the content when the button is clicked */
    .content {
    display: none;
    
  </style>
</head>

<body>
  <h1>Long Term Data</h1>
  <div class="container">
    <div class="html-object">
      <!-- Here's where you add the iframe to embed the Plotly graph -->
      <iframe width="100%" height="400" frameborder="0" scrolling="no" src="longterm_plots/longterm_daily_plotly_fluxtower1.html">
      </iframe>
    </div>
  </div> 


 
<!-- Toggle Icons -->
<div class="toggle-icons">
   <img src="images/daily.jpg" alt="Daily" class="icon" data-view="daily">
   <img src="images/weekly.png" alt="Weekly" class="icon" data-view="weekly">
   <img src="images/monthly.jpg" alt="Monthly" class="icon" data-view="monthly">
</div>

<!-- Data Tables -->
<div class="data-table" data-view="daily">
    <h1>Daily Data</h1>
    <div class="html-object">
        <iframe width="100%" height="430" frameborder="0" scrolling="no" src="longterm_plots/datatable_daily_fluxtower1.html"></iframe>
    </div>
</div>
<div class="data-table" data-view="weekly" style="display: none;">
    <h1>Weekly Data</h1>
    <div class="html-object">
        <iframe width="100%" height="430" frameborder="0" scrolling="no" src="longterm_plots/datatable_daily_fluxtower1.html"></iframe>
    </div>
</div>
<div class="data-table" data-view="monthly" style="display: none;">
    <h1>Monthly Data</h1>
    <div class="html-object">
        <iframe width="100%" height="430" frameborder="0" scrolling="no" src="longterm_plots/datatable_daily_fluxtower1.html"></iframe>
    </div>
</div>

<button class="collapsible">More Technical Data</button>
<div class="content">
<h1>Long Term Data</h1>
  
  <div class="container">
    <div class="html-object">
      <!-- Here's where you add the iframe to embed the Plotly graph -->
      <iframe width="100%" height="800" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1.html">
      </iframe>
    </div>
  </div>

  <h4><i>*Click your variable of interest</i></h4>

 <script>
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
</script>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const icons = document.querySelectorAll('.icon');
        const tables = document.querySelectorAll('.data-table');

        icons.forEach(icon => {
            icon.addEventListener('click', function() {
                const view = this.getAttribute('data-view');

                tables.forEach(table => {
                    if (table.getAttribute('data-view') === view) {
                        table.style.display = "block";
                    } else {
                        table.style.display = "none";
                    }
                });
            });
        });
    });
</script>

function adjustIframeHeight() {
    const iframes = document.querySelectorAll('.html-object iframe');
    iframes.forEach(iframe => {
        if (window.innerWidth <= 768) {
            iframe.style.height = `calc(50vw)`;  // Adjust as needed
        } else {
            iframe.style.height = '600px'; // Adjust as needed for larger screens
        }
    });
}

window.addEventListener('resize', adjustIframeHeight);
window.addEventListener('DOMContentLoaded', adjustIframeHeight); // To adjust the height on page load


<img id="top-right-image" src="images/eddy_cov_ex.png" alt="Eddy Covariance Example">

<!-- Rest of your content... -->
</body>
</html>
