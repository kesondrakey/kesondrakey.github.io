---
layout: post
title: Tower Comparisons
description: Tower Comparisons
nav-menu: true 
---

<html>
<head>
    <style>
        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); 
            grid-gap: 1em;
        }
        .grid-item {
            position: relative;
            padding-top: 100%;
            overflow: hidden;
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
            background: rgba(0,0,0,0.7);
        }
        .grid-item img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .grid-item span {
            font-size: 2rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
            z-index: 2;
        }
        @media (min-width: 768px) {
            .grid-item span {
                font-size: 3rem;
            }
            .collapsible {
                background-color: transparent;
                color: white;
                text-align: center;
                padding: 15px;
                font-size: 20px;
                display: flex;
                justify-content: center;
                align-items: center;
                margin: 20px auto;
                cursor: pointer;
                width: 70%;
            }
            .collapsible:hover {
                color: gray;
            }
        }
    </style>
</head>
<body>

<h1>Tower Comparisons</h1>

{% for category, variables in site.data.categories %}
    <button class="collapsible">{{ category }}</button>
    <div class="content">
        <h2>{{ category }}</h2>
        <div class="grid-container">
            {% for variable in variables %}
                <div class="grid-item">
                    <a href="#" target="_blank">  <!-- Change this placeholder link -->
                        <img src="#" alt="{{ variable }}" onerror="imgError(this);"> <!-- Change this placeholder image source -->
                        <span>{{ variable }}</span>
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
        image.src = "#";  <!-- Change this placeholder for a fallback image URL -->
    }
</script>

</body>
</html>

