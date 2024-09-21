<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Have a question?</title>
  <meta name="description" content="Please feel free to reach out to us with any thoughts or questions - we would love to hear from you!">
  
  <!-- Include Font Awesome Library -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  
  <!-- Include your main CSS file or add custom styles here -->
  <style>
    /* Custom CSS */

    /* Reduce margin between sections in the split */
    .split > section {
      margin: 0.5em 0; /* Adjust as needed */
    }

    /* Adjust padding within the contact-method div */
    .contact-method {
      padding: 0.5em 0; /* Adjust as needed */
    }

    /* Adjust icon size and spacing */
    .contact-method .icon {
      font-size: 1.5em; /* Adjust icon size as needed */
      margin-bottom: 0.3em;
    }

    /* Adjust heading margins */
    .contact-method h4 {
      margin: 0.2em 0;
    }

    /* Remove italics margin */
    .contact-method p {
      margin: 0.2em 0;
    }

    /* Optional: Adjust link styling */
    .contact-method a {
      text-decoration: none;
      color: inherit; /* Keep the link color consistent */
    }
  </style>
</head>
<body>

  <!-- Contact-->
  <section id="contact"> 
    <div class="inner">
      <form action="https://formspree.io/f/xgvwjkrz" method="POST">
        <!-- Honeypot Field for Spam Protection -->
        <input type="text" name="_honeypot" style="display:none">
        <div class="field half first">
          <label for="name">Name</label>
          <input type="text" name="name" id="name" required />
        </div>
        <div class="field half">
          <label for="email">Email</label>
          <input type="email" name="email" id="email" required />
        </div>
        <div class="field">
          <label for="message">Message</label>
          <textarea name="message" id="message" rows="6" required></textarea>
        </div>
        <ul class="actions">
          <li><input type="submit" value="Send Message" class="special" /></li>
          <li><input type="reset" value="Clear" /></li>
        </ul>
      </form>

      <!-- Updated Contact Section -->
      <section class="split">
        <section>
          <div class="contact-method">
            <span class="icon fas fa-tree"></span>
            <h4><a href="https://scholar.google.com/citations?user=K5tffpEAAAAJ&hl=en">Novick Lab: the Biomet Lab</a></h4>
            <p><i>(lab website undergoing construction)</i></p>
          </div>
        </section>
        <section>
          <div class="contact-method">
            <span class="icon fas fa-database"></span>
            <h4><a href="https://scholar.google.com/citations?user=0PxF8zAAAAAJ&hl=en">Barnes Lab: Data Informatics</a></h4>
            <p><i>(lab website undergoing construction)</i></p>
          </div>
        </section>
        <section>
          <div class="contact-method">
            <span class="icon fas fa-droplet"></span>
            <h4><a href="https://royer.lab.indiana.edu/">The Royer Lab</a></h4>
          </div>
        </section>
        <section>
          <div class="contact-method">
            <span class="icon fas fa-faucet-drip"></span>
            <h4><a href="https://tanklab.weebly.com/">Tank Lab</a></h4>
          </div>
        </section>
        <section>
          <div class="contact-method">
            <span class="icon fas fa-seedling"></span>
            <h4><a href="https://yoder.lab.indiana.edu/index.html">Yoder Lab</a></h4>
          </div>
        </section>
        <section>
          <div class="contact-method">
            <span class="icon fas fa-leaf"></span>
            <h4><a href="https://oneill.indiana.edu/faculty-research/directory/profiles/faculty/full-time/suttles-shellye.html">Shellye Suttles</a></h4>
          </div>
        </section>
      </section>
    </div>
  </section>

</body>
</html>
