
A comprehensive resource showcasing invaluable data from four agricultural sites in Indiana


<html>
<head>


<style>
  .grid-container {
    display: grid;
    grid-template-columns: 1fr; /* Single column for mobile view */
    grid-gap: 1em;
  }

  .grid-item {
    position: relative;
    padding-top: 75%; /* 4:3 aspect ratio for mobile view, adjust as needed */
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

  .grid-item a .text-overlay {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 1; /* Make sure the text is above the image */
    color: white; /* Set the text color */
    font-size: 2em; /* Adjust the font size */
    font-weight: bold; /* Make the text bold */
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add a text shadow for better visibility */
    opacity: 0.7; /* Make the text semi-transparent by default */
    transition: opacity 0.3s ease; /* Smooth transition when the opacity changes */
  }

  .grid-item a:hover .text-overlay {
    opacity: 1; /* Make the text fully opaque when the link is hovered */
  }

  @media (min-width: 768px) {
    .grid-container {
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); /* Multi-column for desktop view */
    }
    
    .grid-item {
      padding-top: 100%; /* 1:1 aspect ratio for desktop, as you had initially */
    }

    .grid-item.full-width {
      grid-column: span 4;
      padding-top: 20%; /* If you want this item to be thinner, adjust the padding-top value */
    }

    .grid-item a .text-overlay {
      font-size: 3rem;
      font-weight: 900;
    }
  }

</style>


</head>
<body>
  <div class="grid-container">
    <div class="grid-item">
      <a href="https://kesondrakey.github.io/fluxtower1">
        <img src="images/image1.jpeg" alt="Image 1">
        <div class="text-overlay">Flux Tower 1</div>
      </a>
    </div>
    <div class="grid-item">
      <a href="https://kesondrakey.github.io/fluxtower2">
        <img src="images/image2.jpeg" alt="Image 2">
        <div class="text-overlay">Flux Tower 2</div>
      </a>
    </div>
    <div class="grid-item">
      <a href="https://kesondrakey.github.io/fluxtower3">
        <img src="images/image3.jpeg" alt="Image 3">
        <div class="text-overlay">Flux Tower 3</div>
      </a>
    </div>
    <div class="grid-item">
      <a href="https://kesondrakey.github.io/fluxtower4">
        <img src="images/image4.jpeg" alt="Image 4">
        <div class="text-overlay">Flux Tower 4</div>
      </a>
    </div>
    <div class="grid-item full-width">
  <a href="https://kesondrakey.github.io/TowerComparisons">
    <img src="images/image5.jpeg" alt="Image 5">
    <div class="text-overlay">Tower Comparisons</div>
  </a>
</div>

  </div>
</body>
</html>

