


<html> 
<head>


<style>
  /* Base (mobile-first) */
  .grid-container{
    display:grid;
    grid-template-columns:1fr;   /* single column on mobile */
    gap:1em;
  }

  .grid-item{
    position:relative;
    aspect-ratio:1 / 1;         /* gives height on mobile & desktop */
    overflow:hidden;
  }

  .grid-item a{
    position:absolute;
    inset:0;
    display:grid;
    place-items:center;          /* center overlay text */
    text-decoration:none;
    color:#fff;
    background:rgba(0,0,0,0.35); /* subtle veil over the image */
    transition:background .25s ease;
    border:0;
  }
  .grid-item a:hover{ background:rgba(0,0,0,0.6); }

  /* scope to just the grid images */
  .grid-item img{
    position:absolute;
    inset:0;
    width:100%;
    height:100%;
    object-fit:cover;
    display:block;
    border:0;
    outline:0;
    z-index:0;
  }

  .grid-item .text-overlay{
    pointer-events:none;         /* clicks go to the link */
    z-index:1;
    font-weight:700;
    text-shadow:2px 2px 4px rgba(0,0,0,.5);
    line-height:1.2;
    padding:0 .5rem;
    word-break:break-word;
    font-size:clamp(1rem, 6vw, 1.75rem);  /* responsive on small screens */
  }

  @media (min-width:768px){
    .grid-container{
      grid-template-columns:repeat(auto-fit, minmax(250px,1fr));
    }
    .grid-item.full-width{
      grid-column:1 / -1;        /* span full row */
      aspect-ratio:5 / 1;        /* optional wide banner */
    }
    .grid-item .text-overlay{
      font-size:clamp(1.25rem, 2.5vw, 3rem);  /* scale up on desktop */
      font-weight:900;
    }
  }
</style>


</head>
<body>
  <div class="grid-container">
    <div class="grid-item">
      <a href="https://kesondrakey.github.io/fluxtower1">
        <img src="images/image1.jpeg" alt="Image 1">
        <div class="text-overlay">Flux Tower 1 (US-VT1)</div>
      </a>
    </div>
    <div class="grid-item">
      <a href="https://kesondrakey.github.io/fluxtower2">
        <img src="images/image2.jpeg" alt="Image 2">
        <div class="text-overlay">Flux Tower 2 (US-VT2)</div>
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

