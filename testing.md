---
layout: post
title: Tower Comparisons
---

<h1>Tower Comparisons</h1>

{% assign categories = site.data.categories %}

{% for category, items in categories %}
    <button class="collapsible">{{ category }}</button>
    <div class="content">
        <h2>{{ category }}</h2>
        <div class="grid-container">
            {% for item in items %}
                <div class="grid-item">
                    <a href="#" target="_blank">
                        <img src="#" alt="{{ item }}" onerror="imgError(this);">
                        <span>{{ item }}</span>
                    </a>
                </div>
            {% endfor %}
        </div>
    </div>
{% endfor %}

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

    function imgError(image) {
        image.onerror = null;
        image.src = "#"; // Add your fallback image URL here
    }
</script>

<style>
    /* Collapsible button style */
    .collapsible {
      background-color: #555;
      color: white;
      cursor: pointer;
      padding: 18px;
      width: 100%;
      border: none;
      text-align: left;
      outline: none;
      font-size: 15px;
      transition: 0.4s;
    }

    .collapsible:active, .collapsible:hover {
        background-color: #777;
    }

    /* Content of the collapsible sections */
    .content {
        padding: 0 18px;
        display: none;
        overflow: hidden;
        background-color: #f1f1f1;
        transition: max-height 0.2s ease-out;
    }

    /* Style for grid items */
    .grid-container {
        display: grid;
        grid-template-columns: auto auto auto;
        gap: 10px;
    }

    .grid-item {
        background-color: rgba(255, 255, 255, 0.8);
        padding: 20px;
        font-size: 30px;
        text-align: center;
    }
</style>

