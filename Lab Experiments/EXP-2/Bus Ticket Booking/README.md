### Software Engineering Lab
Experiment 2 – Bus Ticket Booking System
### Aim
To design a prototype for a Bus Ticket Booking System using Figma.

### Tool Used
Figma

### Figma Prototype
https://www.figma.com/make/gpHcpTXnKhzBMcUGh15Gt0/Online-Bus-Booking-System?fullscreen=1&t=YrgPFEhXS4z83MVb-1&code-node-id=0-6

### index.html

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>BusGo - Online Bus Booking</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
        rel="stylesheet">

  <link rel="stylesheet" href="style.css">
</head>

<body>

<header class="navbar">

  <a href="#" class="logo" onclick="showPage('home')">
    🚌 Bus<span>Go</span>
  </a>

  <nav id="mainNav">
    <a href="#" onclick="showPage('home')">Home</a>
    <a href="#" onclick="showPage('search')">Search Buses</a>
    <a href="#" onclick="showPage('bookings')">My Bookings</a>
    <a href="#offers">Offers</a>
    <a href="#contact">Contact</a>
  </nav>

  <div class="nav-buttons">
    <button class="btn light" onclick="showPage('login')">Login</button>
    <button class="btn primary" onclick="showPage('signup')">Sign Up</button>
    <button class="menu" onclick="toggleMenu()">☰</button>
  </div>

</header>

<main id="app"></main>

<footer class="footer" id="contact">

  <div>
    <div class="logo footer-logo">
      🚌 Bus<span>Go</span>
    </div>
    <p>Safe, simple and affordable bus travel across India.</p>
  </div>

  <div>
    <h4>Quick Links</h4>
    <a href="#" onclick="showPage('home')">Home</a>
    <a href="#" onclick="showPage('search')">Search Buses</a>
    <a href="#" onclick="showPage('bookings')">My Bookings</a>
  </div>

  <div>
    <h4>Support</h4>
    <a href="#contact">Help Center</a>
    <a href="#contact">Contact Us</a>
    <a href="#contact">Privacy Policy</a>
  </div>

  <div>
    <h4>Contact</h4>
    <p>support@busgo.demo</p>
    <p>+91 98765 43210</p>
  </div>

</footer>

<div id="toast" class="toast"></div>

<script src="script.js"></script>

</body>
</html>

### Result
The Bus Ticket Booking System prototype was successfully designed using Figma.
