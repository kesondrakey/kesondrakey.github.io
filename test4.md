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
    background-image: linear-gradient(to right, #000000, #333333);  /* darker grays */
    color: white;
    border: none;
    cursor: pointer;
    padding: 10px 15px;
    border-radius: 4px;
    text-align: center;
    text-decoration: none; /* Since it will be an anchor tag */
    font-weight: bold; /* Bold text */
}
</style>


<!-- More Technical Data -->
<div class="collapsible-container">
    <button class="collapsible">More Technical Data</button>
    <div class="container">
        <div class="html-object">
            <iframe width="100%" height="800" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1.html"></iframe>
     
            <!-- View in full View Button -->
<a href="https://kesondrakey.github.io/longterm_plots/longterm_plotly_fluxtower1.html" class="full-view-button">View in full View</a>

       <h4 class="centered-text"><i>*Simply click your variable of interest!</i></h4>
       
        </div>
    </div>
</div>








<script>
// Collapsible Functionality
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
