---
layout: post 
title: Flux Towers
description: Overviewing Flux Towers
nav-menu: true
---

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nature-based Climate Solutions</title>
    <link rel="stylesheet" href="styles.css"> <!-- Assuming you have a CSS file named 'styles.css'. -->
    <style>
        #flux-tower h2 {
            margin-bottom: 10px; /* Reduce the space below the title */
        }

        #video, #video p, #video iframe, #image, #image img {
            text-align: center; /* Center the content in the video and image section */
        }

      #content-wrapper {
            position: relative; /* This might not be necessary if you're using float */
        }
        
        #top-right-image {
            float: right;  /* Float the image to the right */
            margin: 0 0 20px 20px; /* Add some margins for aesthetics: top right bottom left */
            max-height: 500px;  /* You can adjust the height */
            width: auto;  /* Keep the aspect ratio */
        }
        
        #main-content {
            /* If you're using float, flex might not be necessary */
            padding: 0 20px 20px 0; /* Optional: gives some spacing between the image and the content */
        }

        #top-right-image {
            margin-left: 20px; /* Optional: gives some spacing between the image and the content */
        }

        /* Adjust the size of the YouTube embed */
        #video iframe {
            width: 800px; /* Adjust width as per your preference */
            height: 450px; /* Adjust height maintaining the aspect ratio */
            max-width: 100%; /* Ensure it doesn't go beyond the container width on smaller screens */
        }

    /* Style for the banner */
    .grid-item:before {
      height: 300px;
      width: 100%;
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background-color: rgba(18, 24, 33, 0.5); /* Your specific dark blue with 70% opacity */
      z-index: 1;
    }
    
    /* Modify your existing text-overlay */
    .text-overlay {
    
    display: flex;
    align-items: center;
    justify-content: center;



      transition: color 0.3s ease, border 0.3s ease; /* Added transition for border */
      position: absolute;
      top: 50%;
      right: 10%;
      transform: translateY(-50%);
      color: white;
      background-color: rgba(0, 0, 0, 0); /* Make it transparent */
      border: 2px solid white; /* White border */
      padding: 10px;
      border-radius: 4px;
      font-weight: bold; /* Make text bold */
      z-index: 2; /* Sit on top of the image and the dark overlay */
    }
    
    .text-overlay:hover {
        border: 2px solid lightblue; /* Add light blue border */
        color: white; /* Keep the text color white */
        background-color: rgba(0, 0, 0, 0.1); /* Slight background change to indicate hover */
    }
    
    /* Update grid-item to position the image and text overlay */
    .grid-item {
        height: 300px;
        width: 100%;
      position: relative;
      margin: 0;
      padding: 0;
      border: none;
            overflow: hidden;
            border: none;
            outline: none;
    }
    
        .arrow-icon {
      z-index: 2;  /* Make sure this is higher than the z-index of the overlay */
      position: relative;
    }
    
    /* Style the image */
    .grid-item img {
      object-fit: cover;  /* Adjust to make the image cover the entire div */
      width: 100%;  
      height: 100%;  /* Make it span full height */
            margin: 0;
        padding: 0;
    }

     /* for citation */
        .image-note {
      text-align: right;
    }
    
     /* for logos */
    .logos {
      text-align: center;  /* Center the logos horizontally */
      margin-bottom: 20px; /* Add some space below the logos */
    }
    
    .logo {
      height: 120px;  /* Set a fixed height */
      width: auto;  /* Maintain the aspect ratio */
      margin: 0 20px;  /* Add some horizontal space between the logos */
    }


    </style>
</head>

  
<body>

<!-- Add the banner grid-container here -->
<div class="grid-container">
  <div class="grid-item">
    <a href="https://kesondrakey.github.io/about_teams.html">
      <img src="images/flux_tower.jpg" alt="fluxtower">
      <div class="text-overlay">Meet the Teams &#8594;</div> <!-- Added arrow here -->
    </a>
  </div>
</div>

<div class="image-note">
  <i>Image is of the Morgan Monroe Flux Tower. Bloomington, IN</i>
</div>


<!-- end the banner grid-container here -->
    
    <div id="content-wrapper">
        <div id="main-content">

            <section id="flux-tower">
                <h1>The Significance of Flux Towers</h1>
                <p>
                Flux towers, also known as Eddy Covariance systems, are like high-tech weather stations, but with a special focus. They can capture tiny bits of circulating air, known as eddys, and analyze how much carbon dioxide, water vapor, and energy is within them at rate of ten times a second. These towers stand in places like fields, forests, or wetlands and help scientists understand how much carbon dioxide and water vapor is moving in and out of an area at any given time. They're equipped with advanced scientific sensors that measure all sorts of variables (carbon dioxide, water vapor, soil moisture/temperature, precipitation, and energy), giving us critical information regarding the current state of the environment.
                </p>
                <p>
                    By analyzing the tiniest of changes in the air, flux towers give us a snapshot of how gases and energy move in and out of an ecosystem. With long time series, we can detect important changes in these systems. 
                </p>
            </section>

            <section id="video">
                <p>
                    The National Ecological Observatory Network (NEON) provides a comprehensive overview of flux towers and eddy covariance in the video below:
                </p>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/CR4Anc8Mkas" title="Flux Tower Explanation by NEON" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <p style="font-style: italic;">
    <a href="https://www.neonscience.org/impact/observatory-blog/ameriflux-and-neon-program-join-forces-eddy-covariance-data" target="_blank" rel="noopener noreferrer">Sourced from NEON</a>
                    </p>

                <h1><u>Frequently Asked Questions:</u></h1>
                <h3><b>What’s the tower in my field doing? </b></h3>
                <section>
                <p style="text-align: left;">
        Known as Eddy Covariance Systems within the industry, these flux towers contain a set of sensitive instruments that are measuring and analyzing samples of air for its components. The data collected gives us information about the carbon dioxide, water vapor, soil moisture, soil temperature, precipitation, and energy that characterize the crop site across specific moments in time. This is meteorology on a micro scale.  
        
        When these measurements are pieced together, we can observe how gases and energy are exchanged between soil, plants, and the atmosphere over time (across a singular day or season, for example). This is known as flux. For these specific towers, we are looking at differences between fields with cover crops, and those without, so we can learn how they change local atmospheric dynaymis, such as whether or not cover crops take in more carbon dioxide from the air and into the soil.
                </p>
                </section>

                <h3><b>Where can I access the data from my tower? </b></h3>
                <p style="text-align: left;">
                You can access non-quality filtered data through this website! We keep this information up to date on a daily basis. 
                For more high quality data -  filtered and processed data will eventually be submitted to free data repository networks liked Ameriflux and Fluxnet.
                </p>


                
            </section>

<div class="logos">
  <a href="https://www.ameriflux.lbl.gov/" target="_blank" rel="noopener noreferrer" class="logo-link">
    <img src="images/ameriflux.png" alt="Ameriflux logo" class="logo">
  </a>
  <a href="https://fluxnet.org/" target="_blank" rel="noopener noreferrer" class="logo-link">
    <img src="images/fluxnet.png" alt="Fluxnet logo" class="logo">
  </a>
</div>
