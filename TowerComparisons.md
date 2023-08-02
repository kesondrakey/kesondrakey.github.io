---
layout: post
title: Tower Comparisons
description: Tower Comparisons
nav-menu: true
---

<script>
window.onload = function() {
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
}
</script>

<!-- Here, HTML, HEAD and BODY tags and CSS styles are omitted for brevity, please use them as in your code -->

<header>
    <h1 style="text-align:center;">Site Comparisons</h1>
</header>

<div class="collapsibleContainer">
<button class="collapsible">Temperature</button>
<div class="content">
<h1>Daily Plots</h1>

<h2>Today Plots</h2>
<div class="grid-container">
<!-- Your grid items here for Today Plots -->
</div>

<h2>Yesterday Plots</h2>
<div class="grid-container">
<!-- Your grid items here for Yesterday Plots -->
</div>
</div>
</div>

<div class="collapsibleContainer">
<button class="collapsible">Other</button>
<div class="content">
<h2>Today Plots</h2>
<div class="grid-container">
<!-- Replace with your specific image paths -->
<!-- TODO: Insert image paths -->
</div>

<h2>Yesterday Plots</h2>
<div class="grid-container">
<!-- Replace with your specific image paths -->
<!-- TODO: Insert image paths -->
</div>
</div>
</div>

<script>
function imgError(image) {
    image.onerror = "";
    image.outerHTML = '<img src="../../images/cat_attempt.png" alt="Cat 404" style="width: 200px; display: block; margin: auto;"><div>Sorry, not available! This means we don\'t have data for today yet, or the values are all NA!</div>';
    return true;
}
</script>

<!-- End of BODY and HTML tags -->

