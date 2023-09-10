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
    background-image: linear-gradient(to right, #007BFF, #00C6FF);
    border: none;
    cursor: pointer;
    padding: 10px 15px;
    border-radius: 4px;
    text-align: center;
    display: block;
    margin: auto;
}
    .container {
    display: none;  /* Start as hidden */
}

/* Styling for the View in full View button */
.full-view-button {
    display: block;
    margin: 20px auto; /* centers the button horizontally */
    background-image: linear-gradient(to right, #555, #777);  /* darker grays */
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
<h3>More Technical Data</h3>
<button class="collapsible">Toggle Technical Data</button>
<div class="container">
    <div class="html-object">
      <iframe width="100%" height="800" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1.html"></iframe>
      <h4><i>*Simply click your variable of interest!</i></h4>
    </div>
</div>

<!-- View in full View Button -->
<a href="https://kesondrakey.github.io/longterm_plots/longterm_plotly_fluxtower1.html" class="full-view-button">View in full View</a>





<!-- More Technical Data -->
<h3>Keeping for testing </h3>
<button class="collapsible">Toggle Technical Data</button> <!-- This button will toggle the content below *currently doesnt work; i want this button the be a gradient blue color with white text -->
 <div class="container">
    <div class="html-object">
      <!-- Here's where you add the iframe to embed the Plotly graph -->
      <iframe width="100%" height="800" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1.html">
      </iframe>
          <h4><i>*Simply click your variable of interest!</i></h4>
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

</script>
