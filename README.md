
A comprehensive resource showcasing invaluable data from four distinct agricultural sites in Indiana


<html>
<head>
  <style>
    .grid-container {
      display: grid;
      grid-template-columns: repeat(2, 2fr);
      grid-gap: 10px;
    }
    
    .grid-item {
      position: relative;
      width: 100%;
      padding-bottom: 100%;
      overflow: hidden;
    }
    
    .grid-item img {
      position: absolute;
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    
    .grid-item .text-overlay {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      color: white;
      font-size: 18px;
      text-align: center;
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
  </div>
</body>
</html>

