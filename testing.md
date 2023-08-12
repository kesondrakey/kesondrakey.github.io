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
        }
    </style>
</head>
<body>
    <script>
        var categories = {
            "Carbon Flux": ["CO2_li_wpl_H_li"],
            // ... other categories ...
        };
    </script>

    <h1>Tower Comparisons</h1>

    <!-- Category buttons and content here -->
    {% for category, variables in categories %}
        <button class="collapsible">{{ category }}</button>
        <div class="content">
            <h2>{{ category }}</h2>
            <div class="grid-container">
                {% for variable in variables %}
                    <div class="grid-item">
                        <a href="link_to_image" target="_blank">
                            <img src="link_to_image" alt="{{ variable }}" onerror="imgError(this);">
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
            image.src = "fallback_image_url";
        }
    </script>
</body>
</html>

