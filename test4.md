---
layout: post
title: Flux Tower 1
description: Flux Tower 1
nav-menu: true
---


<!-- More Technical Data -->
<h3>More Technical Data</h3>
<button class="collapsible">Toggle Technical Data</button> <!-- This button will toggle the content below -->
 <div class="container">
    <div class="html-object">
      <!-- Here's where you add the iframe to embed the Plotly graph -->
      <iframe width="100%" height="600" frameborder="0" scrolling="no" src="longterm_plots/longterm_plotly_fluxtower1.html">
      </iframe>
          <h4><i>*Simply click your variable of interest!</i></h4>
    </div>
  </div>

    <div class="full-screen-text-container">
        <a href="https://kesondrakey.github.io/longterm_plots/longterm_plotly_fluxtower1.html" class="full-screen-link">View in Full Screen</a>
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
