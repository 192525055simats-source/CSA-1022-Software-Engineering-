### Software Engineering Lab
Experiment 2 – Bus Ticket Booking System
### Aim
To design a prototype for a Bus Ticket Booking System using Figma.

### Tool Used
Figma

### Figma Prototype
https://www.figma.com/make/gpHcpTXnKhzBMcUGh15Gt0/Online-Bus-Booking-System?fullscreen=1&t=YrgPFEhXS4z83MVb-1&code-node-id=0-6

### index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>BusGo - Online Bus Booking</title>

    <link rel="stylesheet" href="style.css">
</head>

<body>

<header class="navbar">
    <div class="logo">🚌 BusGo</div>

    <nav>
        <a href="#" onclick="showPage('home')">Home</a>
        <a href="#" onclick="showPage('search')">Search Buses</a>
        <a href="#" onclick="showPage('bookings')">My Bookings</a>
        <a href="#" onclick="showPage('offers')">Offers</a>
        <a href="#" onclick="showPage('contact')">Contact</a>
        <a href="#" onclick="showPage('login')">Login</a>
        <a href="#" onclick="showPage('signup')">Sign Up</a>
    </nav>
</header>


<main id="app">

    <!-- HOME PAGE -->
    <section id="home" class="page active">

        <div class="hero">
            <div class="hero-content">
                <h1>Your Journey, Our Priority</h1>

                <p>
                    Safe, simple and affordable bus travel across India.
                </p>

                <button onclick="showPage('search')">
                    Search Buses
                </button>
            </div>

            <div class="hero-image">
                🚌
            </div>
        </div>


        <div class="search-box">

            <h2>Search Your Bus</h2>

            <div class="form-row">

                <div>
                    <label>From</label>
                    <select id="from">
                        <option>Chennai</option>
                        <option>Bengaluru</option>
                        <option>Coimbatore</option>
                        <option>Madurai</option>
                        <option>Hyderabad</option>
                        <option>Mumbai</option>
                    </select>
                </div>

                <div>
                    <label>To</label>
                    <select id="to">
                        <option>Bengaluru</option>
                        <option>Chennai</option>
                        <option>Coimbatore</option>
                        <option>Madurai</option>
                        <option>Hyderabad</option>
                        <option>Mumbai</option>
                    </select>
                </div>

                <div>
                    <label>Departure Date</label>
                    <input type="date" id="date">
                </div>

                <div>
                    <label>Passengers</label>
                    <input type="number" id="passengers" min="1" value="1">
                </div>

                <button onclick="searchBuses()">
                    Search
                </button>

            </div>
        </div>


        <section class="section">

            <h2>Popular Routes</h2>

            <div class="cards">

                <div class="route-card">
                    <h3>Chennai → Bengaluru</h3>
                    <p>Starting from ₹599</p>
                </div>

                <div class="route-card">
                    <h3>Chennai → Coimbatore</h3>
                    <p>Starting from ₹499</p>
                </div>

                <div class="route-card">
                    <h3>Chennai → Madurai</h3>
                    <p>Starting from ₹449</p>
                </div>

                <div class="route-card">
                    <h3>Bengaluru → Hyderabad</h3>
                    <p>Starting from ₹699</p>
                </div>

            </div>

        </section>


        <section class="section">

            <h2>Offers</h2>

            <div class="cards">

                <div class="offer-card">
                    <h3>WELCOME100</h3>
                    <p>Get ₹100 OFF on your first booking.</p>
                </div>

                <div class="offer-card">
                    <h3>BUSGO20</h3>
                    <p>Get 20% OFF on selected routes.</p>
                </div>

            </div>

        </section>


        <section class="section">

            <h2>What Our Customers Say</h2>

            <div class="cards">

                <div class="review">
                    ⭐⭐⭐⭐⭐
                    <p>"Very easy booking experience."</p>
                    <strong>Rahul</strong>
                </div>

                <div class="review">
                    ⭐⭐⭐⭐⭐
                    <p>"The seat selection was very simple."</p>
                    <strong>Priya</strong>
                </div>

                <div class="review">
                    ⭐⭐⭐⭐
                    <p>"Good buses and affordable prices."</p>
                    <strong>Arun</strong>
                </div>

            </div>

        </section>

    </section>


    <!-- SEARCH PAGE -->
    <section id="search" class="page">

        <div class="container">

            <h1>Available Buses</h1>

            <div id="busResults"></div>

        </div>

    </section>


    <!-- SEAT PAGE -->
    <section id="seats" class="page">

        <div class="container">

            <h1>Select Your Seat</h1>

            <div class="seat-container">

                <div class="bus-layout">

                    <div class="driver">
                        🚗 Driver
                    </div>

                    <div id="seatGrid"></div>

                </div>

                <div class="booking-summary">

                    <h2>Booking Summary</h2>

                    <p>
                        Selected Seats:
                        <strong id="selectedSeats">None</strong>
                    </p>

                    <p>
                        Total:
                        ₹<strong id="seatTotal">0</strong>
                    </p>

                    <button onclick="goPassenger()">
                        Continue
                    </button>

                </div>

            </div>

        </div>

    </section>


    <!-- PASSENGER DETAILS -->
    <section id="passenger" class="page">

        <div class="container">

            <h1>Passenger Details</h1>

            <form id="passengerForm">

                <div class="form-grid">

                    <div>
                        <label>Name</label>
                        <input type="text" id="pname" required>
                    </div>

                    <div>
                        <label>Age</label>
                        <input type="number" id="age" required>
                    </div>

                    <div>
                        <label>Gender</label>
                        <select id="gender" required>
                            <option value="">Select</option>
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                        </select>
                    </div>

                    <div>
                        <label>Email</label>
                        <input type="email" id="email" required>
                    </div>

                    <div>
                        <label>Phone</label>
                        <input type="tel" id="phone" required>
                    </div>

                    <div>
                        <label>Boarding Point</label>
                        <select id="boarding">
                            <option>Chennai Central</option>
                            <option>Koyambedu Bus Stand</option>
                            <option>Guindy</option>
                        </select>
                    </div>

                    <div>
                        <label>Dropping Point</label>
                        <select id="dropping">
                            <option>Majestic</option>
                            <option>Electronic City</option>
                            <option>Silk Board</option>
                        </select>
                    </div>

                </div>

                <button type="submit">
                    Continue to Payment
                </button>

            </form>

        </div>

    </section>


    <!-- PAYMENT -->
    <section id="payment" class="page">

        <div class="container">

            <h1>Payment</h1>

            <div class="payment-box">

                <h2>Payment Method</h2>

                <label>
                    <input type="radio" name="payment" value="UPI" checked>
                    UPI
                </label>

                <label>
                    <input type="radio" name="payment" value="Card">
                    Credit / Debit Card
                </label>

                <label>
                    <input type="radio" name="payment" value="Net Banking">
                    Net Banking
                </label>

                <label>
                    <input type="radio" name="payment" value="Wallet">
                    Wallet
                </label>

                <input
                    type="text"
                    id="coupon"
                    placeholder="Enter coupon code"
                >

                <button onclick="makePayment()">
                    Pay Now
                </button>

                <p id="couponMessage"></p>

                <div class="price-summary">
                    <p>Base Fare: ₹<span id="baseFare">0</span></p>
                    <p>Taxes: ₹<span id="tax">0</span></p>
                    <p>Discount: ₹<span id="discount">0</span></p>
                    <h2>Total: ₹<span id="finalFare">0</span></h2>
                </div>

            </div>

        </div>

    </section>


    <!-- CONFIRMATION -->
    <section id="confirmation" class="page">

        <div class="container confirmation">

            <div class="success-icon">
                ✓
            </div>

            <h1>Booking Confirmed!</h1>

            <p>Your bus ticket has been booked successfully.</p>

            <div class="ticket">

                <h2>BusGo E-Ticket</h2>

                <p>
                    Booking ID:
                    <strong id="bookingId"></strong>
                </p>

                <p>
                    Route:
                    <strong id="ticketRoute"></strong>
                </p>

                <p>
                    Passenger:
                    <strong id="ticketPassenger"></strong>
                </p>

                <p>
                    Seats:
                    <strong id="ticketSeats"></strong>
                </p>

                <p>
                    Boarding:
                    <strong id="ticketBoarding"></strong>
                </p>

                <p>
                    Fare:
                    ₹<strong id="ticketFare"></strong>
                </p>

            </div>

            <button onclick="window.print()">
                Print Ticket
            </button>

            <button onclick="showPage('bookings')">
                My Bookings
            </button>

        </div>

    </section>


    <!-- BOOKINGS -->
    <section id="bookings" class="page">

        <div class="container">

            <h1>My Bookings</h1>

            <div id="bookingList">

                <div class="empty-booking">
                    <h2>No Bookings Yet</h2>
                    <p>Your upcoming bus bookings will appear here.</p>

                    <button onclick="showPage('search')">
                        Book a Bus
                    </button>
                </div>

            </div>

        </div>

    </section>


    <!-- OFFERS -->
    <section id="offers" class="page">

        <div class="container">

            <h1>Special Offers</h1>

            <div class="cards">

                <div class="offer-card">
                    <h2>WELCOME100</h2>
                    <p>₹100 OFF for new users.</p>
                    <button onclick="copyCoupon('WELCOME100')">
                        Copy Coupon
                    </button>
                </div>

                <div class="offer-card">
                    <h2>BUSGO20</h2>
                    <p>20% discount on selected buses.</p>
                    <button onclick="copyCoupon('BUSGO20')">
                        Copy Coupon
                    </button>
                </div>

            </div>

        </div>

    </section>


    <!-- CONTACT -->
    <section id="contact" class="page">

        <div class="container">

            <h1>Contact Us</h1>

            <div class="contact-box">

                <p>📧 Email: support@busgo.com</p>
                <p>📞 Phone: +91 98765 43210</p>
                <p>📍 Location: Chennai, Tamil Nadu</p>

            </div>

        </div>

    </section>


    <!-- LOGIN -->
    <section id="login" class="page">

        <div class="container">

            <div class="auth-box">

                <h1>Login</h1>

                <input
                    type="email"
                    placeholder="Email Address"
                    id="loginEmail"
                >

                <input
                    type="password"
                    placeholder="Password"
                    id="loginPassword"
                >

                <button onclick="loginUser()">
                    Login
                </button>

                <p>
                    Don't have an account?
                    <a href="#" onclick="showPage('signup')">
                        Sign Up
                    </a>
                </p>

                <p>
                    <a href="#">
                        Forgot Password?
                    </a>
                </p>

            </div>

        </div>

    </section>


    <!-- SIGN UP -->
    <section id="signup" class="page">

        <div class="container">

            <div class="auth-box">

                <h1>Create Account</h1>

                <input
                    type="text"
                    placeholder="Full Name"
                    id="signupName"
                >

                <input
                    type="email"
                    placeholder="Email Address"
                    id="signupEmail"
                >

                <input
                    type="password"
                    placeholder="Password"
                    id="signupPassword"
                >

                <button onclick="signupUser()">
                    Sign Up
                </button>

                <p>
                    Already have an account?
                    <a href="#" onclick="showPage('login')">
                        Login
                    </a>
                </p>

            </div>

        </div>

    </section>

</main>


<footer>

    <div class="footer-content">

        <div>
            <h2>🚌 BusGo</h2>
            <p>
                Safe, simple and affordable bus travel across India.
            </p>
        </div>

        <div>
            <h3>Quick Links</h3>
            <a href="#" onclick="showPage('home')">Home</a>
            <a href="#" onclick="showPage('search')">Search Buses</a>
            <a href="#" onclick="showPage('bookings')">My Bookings</a>
        </div>

        <div>
            <h3>Support</h3>
            <a href="#">Help Center</a>
            <a href="#" onclick="showPage('contact')">Contact Us</a>
            <a href="#">Privacy Policy</a>
        </div>

        <div>
            <h3>Contact</h3>
            <p>📧 support@busgo.com</p>
            <p>📞 +91 98765 43210</p>
        </div>

    </div>

    <div class="copyright">
        © 2026 BusGo. All Rights Reserved.
    </div>

</footer>


<script src="script.js"></script>

</body>
</html>
/* style.css */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background: #f5f8ff;
    color: #172033;
}

.navbar {
    background: #0757d5;
    color: white;
    padding: 18px 7%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    position: sticky;
    top: 0;
    z-index: 1000;
}

.logo {
    font-size: 25px;
    font-weight: bold;
}

nav {
    display: flex;
    gap: 22px;
}

nav a {
    color: white;
    text-decoration: none;
    font-weight: 500;
}

nav a:hover {
    color: #ff9f1c;
}

.page {
    display: none;
}

.page.active {
    display: block;
}

.hero {
    min-height: 430px;
    padding: 80px 8%;
    background: linear-gradient(135deg, #0757d5, #3182f6);
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.hero-content {
    max-width: 600px;
}

.hero h1 {
    font-size: 48px;
    margin-bottom: 20px;
}

.hero p {
    font-size: 20px;
    margin-bottom: 30px;
}

.hero-image {
    font-size: 150px;
}

button {
    background: #ff8c00;
    color: white;
    border: none;
    padding: 13px 25px;
    border-radius: 8px;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
}

button:hover {
    background: #e97900;
}

.search-box {
    width: 85%;
    margin: -55px auto 50px;
    background: white;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 8px 30px rgba(0,0,0,0.15);
    position: relative;
}

.search-box h2 {
    margin-bottom: 20px;
}

.form-row {
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    gap: 15px;
    align-items: end;
}

label {
    display: block;
    margin-bottom: 7px;
    font-weight: bold;
}

input,
select {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccd4e0;
    border-radius: 7px;
    font-size: 15px;
}

.section {
    padding: 45px 8%;
}

.section h2 {
    margin-bottom: 25px;
}

.cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 20px;
}

.route-card,
.offer-card,
.review {
    background: white;
    padding: 25px;
    border-radius: 14px;
    box-shadow: 0 4px 18px rgba(0,0,0,0.08);
}

.offer-card {
    border-left: 5px solid #ff8c00;
}

.container {
    width: 85%;
    margin: 50px auto;
}

.container h1 {
    margin-bottom: 30px;
}

.bus-card {
    background: white;
    padding: 25px;
    margin-bottom: 20px;
    border-radius: 14px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.08);
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.bus-info h2 {
    color: #0757d5;
    margin-bottom: 10px;
}

.bus-info p {
    margin: 7px 0;
}

.price {
    font-size: 25px;
    font-weight: bold;
    margin-bottom: 15px;
}

.seat-container {
    display: grid;
    grid-template-columns: 2fr 1fr;
    gap: 30px;
}

.bus-layout {
    background: white;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.1);
}

.driver {
    background: #e9eef8;
    padding: 15px;
    text-align: right;
    border-radius: 8px;
    margin-bottom: 25px;
}

#seatGrid {
    display: grid;
    grid-template-columns: repeat(4, 60px);
    gap: 12px;
    justify-content: center;
}

.seat {
    width: 55px;
    height: 45px;
    border-radius: 8px;
    border: none;
    background: #c9f7d5;
    color: #176b31;
}

.seat.selected {
    background: #0757d5;
    color: white;
}

.seat.booked {
    background: #d5d5d5;
    color: #777;
    cursor: not-allowed;
}

.booking-summary,
.payment-box,
.contact-box,
.auth-box {
    background: white;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.08);
}

.booking-summary p {
    margin: 20px 0;
}

.form-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
    background: white;
    padding: 30px;
    border-radius: 15px;
    margin-bottom: 20px;
}

.payment-box {
    max-width: 600px;
}

.payment-box label {
    display: block;
    padding: 12px;
    border: 1px solid #ddd;
    margin: 10px 0;
    border-radius: 7px;
}

.payment-box input[type="radio"] {
    width: auto;
}

.price-summary {
    margin-top: 25px;
    border-top: 1px solid #ddd;
    padding-top: 20px;
}

.price-summary p {
    margin: 10px 0;
}

.ticket {
    max-width: 600px;
    background: white;
    padding: 30px;
    margin: 30px auto;
    border-radius: 15px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.12);
    text-align: left;
}

.ticket p {
    padding: 12px 0;
    border-bottom: 1px solid #eee;
}

.confirmation {
    text-align: center;
}

.success-icon {
    width: 80px;
    height: 80px;
    background: #21b45b;
    color: white;
    border-radius: 50%;
    font-size: 50px;
    margin: auto auto 20px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.empty-booking {
    text-align: center;
    background: white;
    padding: 60px;
    border-radius: 15px;
}

.auth-box {
    max-width: 450px;
    margin: auto;
}

.auth-box input {
    margin-bottom: 15px;
}

.auth-box button {
    width: 100%;
    margin-bottom: 15px;
}

.auth-box a {
    color: #0757d5;
}

.contact-box {
    max-width: 600px;
}

.contact-box p {
    padding: 15px;
    font-size: 18px;
}

footer {
    background: #101a2c;
    color: white;
    padding: 50px 8% 20px;
}

.footer-content {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 40px;
}

footer h3 {
    margin-bottom: 15px;
}

footer a {
    display: block;
    color: #ddd;
    margin: 10px 0;
    text-decoration: none;
}

footer a:hover {
    color: #ff9f1c;
}

.copyright {
    text-align: center;
    border-top: 1px solid #394257;
    margin-top: 30px;
    padding-top: 20px;
    color: #aaa;
}

@media(max-width: 900px) {

    .navbar {
        flex-direction: column;
        gap: 15px;
    }

    nav {
        flex-wrap: wrap;
        justify-content: center;
    }

    .hero {
        flex-direction: column;
        text-align: center;
    }

    .hero h1 {
        font-size: 35px;
    }

    .form-row {
        grid-template-columns: 1fr;
    }

    .seat-container {
        grid-template-columns: 1fr;
    }

    .form-grid {
        grid-template-columns: 1fr;
    }

    .footer-content {
        grid-template-columns: 1fr 1fr;
    }

    .bus-card {
        flex-direction: column;
        gap: 20px;
        align-items: flex-start;
    }
}

@media(max-width: 500px) {

    .footer-content {
        grid-template-columns: 1fr;
    }

    .hero-image {
        font-size: 90px;
    }
}
// script.js

let selectedBus = null;
let selectedSeats = [];
let currentFare = 0;

const buses = [
    {
        operator: "Orange Travels",
        type: "AC Sleeper",
        from: "Chennai",
        to: "Bengaluru",
        departure: "21:30",
        arrival: "05:30",
        duration: "8h",
        seats: 18,
        rating: 4.6,
        price: 799
    },
    {
        operator: "KPN Travels",
        type: "AC Seater",
        from: "Chennai",
        to: "Coimbatore",
        departure: "22:00",
        arrival: "05:00",
        duration: "7h",
        seats: 24,
        rating: 4.5,
        price: 599
    },
    {
        operator: "SRS Travels",
        type: "Non-AC Sleeper",
        from: "Chennai",
        to: "Madurai",
        departure: "20:30",
        arrival: "06:00",
        duration: "9h 30m",
        seats: 15,
        rating: 4.3,
        price: 549
    },
    {
        operator: "VRL Travels",
        type: "AC Sleeper",
        from: "Bengaluru",
        to: "Hyderabad",
        departure: "21:00",
        arrival: "06:30",
        duration: "9h 30m",
        seats: 20,
        rating: 4.7,
        price: 899
    },
    {
        operator: "IntrCity SmartBus",
        type: "AC Seater",
        from: "Mumbai",
        to: "Pune",
        departure: "18:00",
        arrival: "22:00",
        duration: "4h",
        seats: 30,
        rating: 4.8,
        price: 499
    }
];


function showPage(pageId) {

    document.querySelectorAll(".page").forEach(page => {
        page.classList.remove("active");
    });

    const page = document.getElementById(pageId);

    if (page) {
        page.classList.add("active");
    }

    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });
}


function searchBuses() {

    const from = document.getElementById("from").value;
    const to = document.getElementById("to").value;

    const results = buses.filter(bus =>
        bus.from === from && bus.to === to
    );

    const container = document.getElementById("busResults");

    if (results.length === 0) {

        container.innerHTML = `
            <div class="empty-booking">
                <h2>No buses found</h2>
                <p>Try selecting another route.</p>
            </div>
        `;

    } else {

        container.innerHTML = results.map((bus, index) => `

            <div class="bus-card">

                <div class="bus-info">

                    <h2>${bus.operator}</h2>

                    <p>
                        <strong>${bus.type}</strong>
                    </p>

                    <p>
                        ${bus.departure} → ${bus.arrival}
                    </p>

                    <p>
                        Duration: ${bus.duration}
                    </p>

                    <p>
                        ⭐ ${bus.rating}
                    </p>

                    <p>
                        ${bus.seats} Seats Available
                    </p>

                </div>

                <div>

                    <div class="price">
                        ₹${bus.price}
                    </div>

                    <button onclick="selectBus(${buses.indexOf(bus)})">
                        View Seats
                    </button>

                </div>

            </div>

        `).join("");
    }

    showPage("search");
}


function selectBus(index) {

    selectedBus = buses[index];

    selectedSeats = [];

    currentFare = selectedBus.price;

    generateSeats();

    showPage("seats");
}


function generateSeats() {

    const grid = document.getElementById("seatGrid");

    grid.innerHTML = "";

    for (let i = 1; i <= 32; i++) {

        const seat = document.createElement("button");

        seat.className = "seat";

        seat.textContent = i;

        if ([4, 8, 15, 23, 29].includes(i)) {
            seat.classList.add("booked");
            seat.disabled = true;
        }

        seat.onclick = function () {
            toggleSeat(i, seat);
        };

        grid.appendChild(seat);
    }

    updateSeatSummary();
}


function toggleSeat(number, element) {

    if (selectedSeats.includes(number)) {

        selectedSeats =
            selectedSeats.filter(seat => seat !== number);

        element.classList.remove("selected");

    } else {

        if (selectedSeats.length >= 6) {
            alert("Maximum 6 seats can be selected.");
            return;
        }

        selectedSeats.push(number);

        element.classList.add("selected");
    }

    updateSeatSummary();
}


function updateSeatSummary() {

    document.getElementById("selectedSeats").textContent =
        selectedSeats.length
            ? selectedSeats.join(", ")
            : "None";

    const total =
        selectedBus
            ? selectedBus.price * selectedSeats.length
            : 0;

    document.getElementById("seatTotal").textContent = total;
}


function goPassenger() {

    if (selectedSeats.length === 0) {
        alert("Please select at least one seat.");
        return;
    }

    showPage("passenger");
}


document.getElementById("passengerForm")
    .addEventListener("submit", function (event) {

        event.preventDefault();

        if (!this.checkValidity()) {
            alert("Please fill all required details.");
            return;
        }

        const baseFare =
            selectedBus.price * selectedSeats.length;

        const tax =
            Math.round(baseFare * 0.05);

        document.getElementById("baseFare").textContent =
            baseFare;

        document.getElementById("tax").textContent =
            tax;

        document.getElementById("discount").textContent =
            0;

        document.getElementById("finalFare").textContent =
            baseFare + tax;

        showPage("payment");
    });


function makePayment() {

    const baseFare =
        selectedBus.price * selectedSeats.length;

    const tax =
        Math.round(baseFare * 0.05);

    let discount = 0;

    const coupon =
        document.getElementById("coupon").value
            .trim()
            .toUpperCase();

    if (coupon === "WELCOME100") {
        discount = 100;
    }

    if (coupon === "BUSGO20") {
        discount = Math.round(baseFare * 0.20);
    }

    const total =
        Math.max(0, baseFare + tax - discount);

    document.getElementById("discount").textContent =
        discount;

    document.getElementById("finalFare").textContent =
        total;

    document.getElementById("couponMessage").textContent =
        discount > 0
            ? "Coupon applied successfully!"
            : coupon
                ? "Invalid coupon code."
                : "";

    if (coupon && discount === 0) {
        return;
    }

    createBooking(total);
}


function createBooking(total) {

    const bookingId =
        "BG" +
        Math.floor(100000 + Math.random() * 900000);

    document.getElementById("bookingId").textContent =
        bookingId;

    document.getElementById("ticketRoute").textContent =
        selectedBus.from + " → " + selectedBus.to;

    document.getElementById("ticketPassenger").textContent =
        document.getElementById("pname").value;

    document.getElementById("ticketSeats").textContent =
        selectedSeats.join(", ");

    document.getElementById("ticketBoarding").textContent =
        document.getElementById("boarding").value;

    document.getElementById("ticketFare").textContent =
        total;

    const booking = {
        id: bookingId,
        operator: selectedBus.operator,
        route: selectedBus.from + " → " + selectedBus.to,
        passenger: document.getElementById("pname").value,
        seats: selectedSeats.join(", "),
        fare: total,
        status: "Confirmed"
    };

    localStorage.setItem(
        "busgoBooking",
        JSON.stringify(booking)
    );

    showPage("confirmation");

    loadBookings();
}


function loadBookings() {

    const data =
        localStorage.getItem("busgoBooking");

    const container =
        document.getElementById("bookingList");

    if (!data) {
        return;
    }

    const booking =
        JSON.parse(data);

    container.innerHTML = `

        <div class="bus-card">

            <div class="bus-info">

                <h2>${booking.operator}</h2>

                <p>
                    ${booking.route}
                </p>

                <p>
                    Passenger: ${booking.passenger}
                </p>

                <p>
                    Seats: ${booking.seats}
                </p>

                <p>
                    Status: <strong>${booking.status}</strong>
                </p>

            </div>

            <div>

                <div class="price">
                    ₹${booking.fare}
                </div>

                <button onclick="cancelBooking()">
                    Cancel
                </button>

            </div>

        </div>

    `;
}


function cancelBooking() {

    if (confirm("Are you sure you want to cancel this booking?")) {

        localStorage.removeItem("busgoBooking");

        loadBookings();

        alert("Booking cancelled successfully.");
    }
}


function loginUser() {

    const email =
        document.getElementById("loginEmail").value;

    const password =
        document.getElementById("loginPassword").value;

    if (!email || !password) {
        alert("Please enter email and password.");
        return;
    }

    alert("Login successful!");

    showPage("home");
}


function signupUser() {

    const name =
        document.getElementById("signupName").value;

    const email =
        document.getElementById("signupEmail").value;

    const password =
        document.getElementById("signupPassword").value;

    if (!name || !email || !password) {
        alert("Please fill all fields.");
        return;
    }

    alert("Account created successfully!");

    showPage("login");
}


function copyCoupon(code) {

    navigator.clipboard.writeText(code);

    alert(
        "Coupon " + code + " copied!"
    );
}


document.addEventListener("DOMContentLoaded", function () {

    const today =
        new Date().toISOString().split("T")[0];

    document.getElementById("date").min =
        today;

    loadBookings();

});
### Result
The Bus Ticket Booking System prototype was successfully designed using Figma.
