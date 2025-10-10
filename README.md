


<html> 
<head>


<style>
  /* Mobile-first grid */
  .grid-container{
    display:grid;
    grid-template-columns:1fr;   /* single column on mobile */
    gap:1em;
  }

  .grid-item{
    position:relative;
    aspect-ratio:1 / 1;          /* gives height so tiles don't overlap */
    overflow:hidden;
  }

  /* Clickable tile layer */
  .grid-item a{
    position:absolute;
    top:0; left:0; right:0; bottom:0;
    display:flex;
    align-items:center;           /* center */
    justify-content:center;       /* center */
    text-decoration:none;
    color:#fff;
    background:rgba(0,0,0,0.7);   /* your dark veil */
    border:0;
  }

  /* Only affect images inside the grid */
  .grid-item img{
    position:absolute;
    top:0; left:0; right:0; bottom:0;
    width:100%;
    height:100%;
    object-fit:cover;
    border:0;
    outline:0;
    z-index:0;
  }

  /* Centered overlay text */
.grid-item a .text-overlay{
  position:absolute;
  inset:0;
  display:grid;                 /* grid centering */
  place-items:center;           /* centers both axes */
  z-index:1;
  color:#fff;
  text-align:center;            /* <-- center the text itself */
  font-weight:bold;
  text-shadow:2px 2px 4px rgba(0,0,0,.5);
  opacity:0.7;
  transition:opacity .3s ease;
  padding:0 .5rem;
  line-height:1.2;
  word-break:break-word;
  font-size:clamp(1rem, 6vw, 1.75rem);
}


  .grid-item a:hover .text-overlay{
    opacity:1;                    /* your original hover behavior */
  }

  /* Desktop */
  @media (min-width:768px){
    .grid-container{
      grid-template-columns:repeat(auto-fit, minmax(250px, 1fr));
    }
    .grid-item.full-width{
      grid-column:1 / -1;
      aspect-ratio:5 / 1;         /* optional wide banner */
    }
    .grid-item a .text-overlay{
      font-size:clamp(1.25rem, 2.5vw, 3rem);
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

