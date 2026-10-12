Software Engineering Lab
Experiment 2 – Bus Ticket Booking System
Aim
To design a prototype for a Bus Ticket Booking System using Figma.

Tool Used
Figma

Figma Prototype
https://plaque-surge-86696557.figma.site/

index.html
<title>PurpleBus - Bus Ticket Booking</title>
🚌 PurpleBus
<nav>
    <a onclick="showPage('home')">Home</a>
    <a onclick="showPage('results')">Bus Tickets</a>
    <a onclick="showPage('tracking')">Live Tracking</a>
    <a onclick="showPage('offers')">Offers</a>
    <a onclick="showPage('bookings')">My Bookings</a>
    <a onclick="showPage('profile')">Help</a>
</nav>

<button class="login-btn" onclick="showPage('profile')">
    👤 Login
</button>
<div class="hero">

    <div class="hero-content">
        <span class="badge">PREMIUM BUS TRAVEL</span>

        <h1>Your Journey<br>
            <span>Starts Here</span>
        </h1>

        <p>
            Book comfortable bus journeys across India
            with PurpleBus.
        </p>

        <button class="primary-btn" onclick="showPage('results')">
            Search Buses →
        </button>
    </div>

    <div class="bus-image">
        🚌
    </div>

</div>


<!-- SEARCH BOX -->
<div class="search-box">

    <div class="search-item">
        <label>FROM</label>
        <strong>Chennai</strong>
        <small>Koyambedu</small>
    </div>

    <button class="swap">⇄</button>

    <div class="search-item">
        <label>TO</label>
        <strong>Bangalore</strong>
        <small>Majestic</small>
    </div>

    <div class="search-item">
        <label>JOURNEY DATE</label>
        <strong>10 October 2026</strong>
        <small>Saturday</small>
    </div>

    <div class="search-item">
        <label>PASSENGERS</label>
        <strong>1 Passenger</strong>
        <small>Adult</small>
    </div>

    <div class="search-item">
        <label>BUS TYPE</label>
        <strong>All Buses</strong>
        <small>AC / Sleeper</small>
    </div>

    <button class="search-btn" onclick="showPage('results')">
        Search Buses
    </button>

</div>


<div class="section">
    <h2>Popular Routes</h2>

    <div class="cards">
        <div class="route-card">
            <h3>Chennai → Bangalore</h3>
            <p>From ₹699</p>
        </div>

        <div class="route-card">
            <h3>Chennai → Coimbatore</h3>
            <p>From ₹599</p>
        </div>

        <div class="route-card">
            <h3>Bangalore → Hyderabad</h3>
            <p>From ₹799</p>
        </div>

        <div class="route-card">
            <h3>Chennai → Madurai</h3>
            <p>From ₹649</p>
        </div>
    </div>
</div>


<div class="section">
    <h2>Special Offers</h2>

    <div class="offer-grid">
        <div class="offer-card">
            <span>NEW USER</span>
            <h2>10% OFF</h2>
            <p>First booking discount</p>
            <button>Use Offer</button>
        </div>

        <div class="offer-card">
            <span>WEEKEND</span>
            <h2>₹100 OFF</h2>
            <p>Weekend travel special</p>
            <button>Use Offer</button>
        </div>

        <div class="offer-card">
            <span>SELECTED ROUTES</span>
            <h2>15% OFF</h2>
            <p>Limited period offer</p>
            <button>Use Offer</button>
        </div>
    </div>
</div>
<div class="page-header">
    <button class="back" onclick="showPage('home')">← Back</button>

    <h1>Chennai → Bangalore</h1>
    <p>10 October 2026 · 1 Passenger</p>
</div>

<div class="results-layout">

    <!-- FILTER -->
    <aside class="filters">

        <h3>Filters</h3>

        <label>Bus Type</label>
        <div class="check">
            <input type="checkbox"> AC
        </div>
        <div class="check">
            <input type="checkbox"> Non-AC
        </div>

        <label>Seat Type</label>
        <div class="check">
            <input type="checkbox"> Sleeper
        </div>
        <div class="check">
            <input type="checkbox"> Seater
        </div>

        <label>Departure</label>
        <input type="range" min="0" max="24">

        <label>Price Range</label>
        <input type="range" min="500" max="2000">

        <label>Amenities</label>
        <div class="check">
            <input type="checkbox"> WiFi
        </div>
        <div class="check">
            <input type="checkbox"> Charging
        </div>
        <div class="check">
            <input type="checkbox"> Water Bottle
        </div>

    </aside>


    <!-- BUS LIST -->
    <main class="bus-list">

        <div class="bus-card">

            <div class="operator">
                <div class="operator-logo">PT</div>

                <div>
                    <h3>Purple Travels</h3>
                    <span>★ 4.7 · Excellent</span>
                </div>
            </div>

            <div class="bus-details">
                <div>
                    <strong>22:30</strong>
                    <small>Chennai</small>
                </div>

                <div class="duration">
                    ───── 6h 30m ─────
                </div>

                <div>
                    <strong>05:00</strong>
                    <small>Bangalore</small>
                </div>
            </div>

            <div class="bus-info">
                <span>AC Sleeper</span>
                <span>📶 WiFi</span>
                <span>🔌 Charging</span>
                <span>💧 Water</span>
                <span class="available">12 Seats Left</span>
            </div>

            <div class="bus-price">
                <small>Starting from</small>
                <strong>₹729</strong>
                <button onclick="showPage('seats')">
                    View Seats
                </button>
            </div>

        </div>


        <div class="bus-card">

            <div class="operator">
                <div class="operator-logo">RT</div>

                <div>
                    <h3>Royal Travels</h3>
                    <span>★ 4.5 · Very Good</span>
                </div>
            </div>

            <div class="bus-details">
                <div>
                    <strong>21:45</strong>
                    <small>Chennai</small>
                </div>

                <div class="duration">
                    ───── 7h 00m ─────
                </div>

                <div>
                    <strong>04:45</strong>
                    <small>Bangalore</small>
                </div>
            </div>

            <div class="bus-info">
                <span>AC Sleeper</span>
                <span>🔌 Charging</span>
                <span>💧 Water</span>
                <span class="available">8 Seats Left</span>
            </div>

            <div class="bus-price">
                <small>Starting from</small>
                <strong>₹799</strong>
                <button onclick="showPage('seats')">
                    View Seats
                </button>
            </div>

        </div>

    </main>

</div>
<div class="page-header">
    <button class="back" onclick="showPage('results')">← Back</button>
    <h1>Select Your Seat</h1>
    <p>Purple Travels · AC Sleeper · Chennai → Bangalore</p>
</div>

<div class="seat-layout">

    <div class="bus-container">

        <div class="driver">
            🚍 DRIVER
        </div>

        <div class="bus-interior">

            <div class="seat-row">
                <button class="seat available-seat">
                    A1
                    <small>₹729</small>
                </button>

                <button class="seat available-seat">
                    A2
                    <small>₹729</small>
                </button>

                <span class="aisle"></span>

                <button class="seat sold-seat">
                    A3
                    <small>Sold</small>
                </button>
            </div>


            <div class="seat-row">
                <button class="seat sold-seat">
                    A4
                    <small>Sold</small>
                </button>

                <button class="seat available-seat">
                    A5
                    <small>₹729</small>
                </button>

                <span class="aisle"></span>

                <button class="seat available-seat">
                    A6
                    <small>₹729</small>
                </button>
            </div>


            <div class="seat-row">
                <button class="seat available-seat">
                    A7
                    <small>₹729</small>
                </button>

                <button class="seat available-seat">
                    A8
                    <small>₹729</small>
                </button>

                <span class="aisle"></span>

                <button class="seat sold-seat">
                    A9
                    <small>Sold</small>
                </button>
            </div>


            <div class="seat-row">
                <button class="seat sold-seat">
                    A10
                    <small>Sold</small>
                </button>

                <button class="seat available-seat">
                    A11
                    <small>₹729</small>
                </button>

                <span class="aisle"></span>

                <button class="seat selected-seat">
                    A12
                    <small>₹729</small>
                </button>
            </div>


            <div class="seat-row">
                <button class="seat available-seat">
                    A13
                    <small>₹729</small>
                </button>

                <button class="seat sold-seat">
                    A14
                    <small>Sold</small>
                </button>

                <span class="aisle"></span>

                <button class="seat available-seat">
                    A15
                    <small>₹729</small>
                </button>
            </div>

        </div>

        <div class="legend">
            <span>🟢 Available</span>
            <span>🟣 Selected</span>
            <span>⚪ Sold</span>
        </div>

    </div>


    <!-- BOOKING SUMMARY -->
    <aside class="booking-summary">

        <h2>Booking Summary</h2>

        <div class="summary-route">
            <div>
                <small>BOARDING</small>
                <strong>Chennai - Koyambedu</strong>
            </div>

            <div>
                <small>DROPPING</small>
                <strong>Bangalore - Majestic</strong>
            </div>
        </div>

        <hr>

        <div class="summary-line">
            <span>Selected Seat</span>
            <strong id="selectedSeat">A12</strong>
        </div>

        <div class="summary-line">
            <span>Seat Fare</span>
            <strong>₹729</strong>
        </div>

        <div class="summary-line">
            <span>Convenience Fee</span>
            <strong>₹20</strong>
        </div>

        <hr>

        <div class="total">
            <span>Total</span>
            <strong>₹749</strong>
        </div>

        <button class="primary-btn full"
                onclick="showPage('passenger')">
            Continue →
        </button>

    </aside>

</div>
<div class="page-header">
    <button class="back" onclick="showPage('seats')">← Back</button>
    <h1>Passenger Details</h1>
    <p>Enter passenger information</p>
</div>

<div class="form-container">

    <div class="form-card">

        <div class="form-grid">

            <div>
                <label>Full Name</label>
                <input type="text" placeholder="Enter full name">
            </div>

            <div>
                <label>Age</label>
                <input type="number" placeholder="Age">
            </div>

            <div>
                <label>Gender</label>
                <select>
                    <option>Select Gender</option>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
            </div>

            <div>
                <label>Mobile Number</label>
                <input type="tel" placeholder="+91 XXXXX XXXXX">
            </div>

            <div>
                <label>Email</label>
                <input type="email" placeholder="example@email.com">
            </div>

            <div>
                <label>ID Type</label>
                <select>
                    <option>Aadhaar</option>
                    <option>Passport</option>
                    <option>Driving Licence</option>
                    <option>Voter ID</option>
                </select>
            </div>

            <div>
                <label>ID Number</label>
                <input type="text" placeholder="Enter ID number">
            </div>

            <div>
                <label>Selected Seat</label>
                <input type="text" value="A12" readonly>
            </div>

        </div>

        <button class="primary-btn"
                onclick="showPage('payment')">
            Continue to Payment →
        </button>

    </div>

</div>
<div class="page-header">
    <button class="back" onclick="showPage('passenger')">← Back</button>
    <h1>Secure Payment</h1>
    <p>Choose your preferred payment method</p>
</div>

<div class="payment-layout">

    <div class="payment-card">

        <h2>Payment Method</h2>

        <div class="payment-options">

            <button class="payment-option active">
                💳 Credit / Debit Card
            </button>

            <button class="payment-option">
                📱 UPI
            </button>

            <button class="payment-option">
                🏦 Net Banking
            </button>

            <button class="payment-option">
                👛 Wallet
            </button>

        </div>

        <label>Card Number</label>
        <input type="text" placeholder="1234 5678 9012 3456">

        <div class="form-grid">

            <div>
                <label>Expiry</label>
                <input type="text" placeholder="MM/YY">
            </div>

            <div>
                <label>CVV</label>
                <input type="password" placeholder="CVV">
            </div>

        </div>

        <button class="primary-btn full"
                onclick="showPage('confirmation')">
            🔒 Pay Securely ₹749
        </button>

    </div>


    <aside class="price-summary">

        <h2>Fare Summary</h2>

        <div class="summary-line">
            <span>Ticket Fare</span>
            <strong>₹729</strong>
        </div>

        <div class="summary-line">
            <span>Convenience Fee</span>
            <strong>₹20</strong>
        </div>

        <div class="summary-line discount">
            <span>Discount</span>
            <strong>- ₹0</strong>
        </div>

        <hr>

        <div class="total">
            <span>Total</span>
            <strong>₹749</strong>
        </div>

    </aside>

</div>
<div class="confirmation">

    <div class="success-icon">✓</div>

    <h1>Booking Confirmed!</h1>

    <p>Your PurpleBus ticket has been booked successfully.</p>

    <div class="ticket">

        <div class="ticket-header">
            <h2>🚌 PurpleBus</h2>
            <span>CONFIRMED</span>
        </div>

        <div class="ticket-grid">

            <div>
                <small>BOOKING ID</small>
                <strong>PB20261010001</strong>
            </div>

            <div>
                <small>SEAT</small>
                <strong>A12</strong>
            </div>

            <div>
                <small>ROUTE</small>
                <strong>Chennai → Bangalore</strong>
            </div>

            <div>
                <small>DATE</small>
                <strong>10 Oct 2026</strong>
            </div>

            <div>
                <small>DEPARTURE</small>
                <strong>22:30</strong>
            </div>

            <div>
                <small>ARRIVAL</small>
                <strong>05:00</strong>
            </div>

            <div>
                <small>BOARDING</small>
                <strong>Koyambedu</strong>
            </div>

            <div>
                <small>DROPPING</small>
                <strong>Majestic</strong>
            </div>

        </div>

        <div class="qr">
            ▣ ▣ ▦ ▣<br>
            ▦ ▣ ▣ ▦<br>
            ▣ ▦ ▣ ▣
        </div>

    </div>

    <div class="confirmation-buttons">

        <button class="primary-btn" onclick="window.print()">
            🖨 Download Ticket
        </button>

        <button class="secondary-btn"
                onclick="showPage('bookings')">
            View My Booking
        </button>

    </div>

</div>
<div class="page-header">
    <button class="back" onclick="showPage('home')">← Back</button>
    <h1>Live Bus Tracking</h1>
    <p>Purple Travels · PB1024</p>
</div>

<div class="tracking-card">

    <div class="map">

        <div class="city city1">
            📍 Chennai
        </div>

        <div class="road"></div>

        <div class="bus-location">
            🚌
            <span>Bus is here</span>
        </div>

        <div class="city city2">
            📍 Bangalore
        </div>

    </div>

    <div class="tracking-info">

        <h2>Bus Status</h2>

        <div class="status">
            <span class="green-dot"></span>
            On Schedule
        </div>

        <div class="tracking-stat">
            <span>Distance Remaining</span>
            <strong>178 km</strong>
        </div>

        <div class="tracking-stat">
            <span>Estimated Arrival</span>
            <strong>05:00 AM</strong>
        </div>

        <div class="tracking-stat">
            <span>Current Location</span>
            <strong>Vellore</strong>
        </div>

        <button class="primary-btn full"
                onclick="alert('Location refreshed!')">
            ↻ Refresh Location
        </button>

    </div>

</div>
<div class="page-header">
    <button class="back" onclick="showPage('home')">← Back</button>
    <h1>My Bookings</h1>
    <p>Manage your PurpleBus journeys</p>
</div>

<div class="booking-tabs">
    <button>Upcoming</button>
    <button>Completed</button>
    <button>Cancelled</button>
</div>

<div class="booking-card">

    <div class="booking-icon">🚌</div>

    <div class="booking-main">
        <h2>Chennai → Bangalore</h2>
        <p>Purple Travels · AC Sleeper</p>
        <span>10 October 2026 · Seat A12</span>
    </div>

    <div class="booking-status">
        <span>CONFIRMED</span>
        <strong>₹749</strong>
    </div>

    <div class="booking-actions">
        <button onclick="showPage('tracking')">Track Bus</button>
        <button onclick="window.print()">View Ticket</button>
        <button>Cancel</button>
    </div>

</div>
<div class="page-header">
    <button class="back" onclick="showPage('home')">← Back</button>
    <h1>Exclusive Offers</h1>
    <p>Save more on your next journey.</p>
</div>

<div class="offer-grid large">

    <div class="offer-card">
        <span>FIRST BOOKING</span>
        <h1>10% OFF</h1>
        <p>Get 10% off on your first PurpleBus booking.</p>
        <strong>Code: PURPLE10</strong>
        <button>Copy Code</button>
    </div>

    <div class="offer-card">
        <span>WEEKEND SPECIAL</span>
        <h1>₹100 OFF</h1>
        <p>Enjoy ₹100 off selected weekend routes.</p>
        <strong>Code: WEEKEND100</strong>
        <button>Copy Code</button>
    </div>

    <div class="offer-card">
        <span>SELECTED ROUTES</span>
        <h1>15% OFF</h1>
        <p>Save 15% on selected premium routes.</p>
        <strong>Code: TRAVEL15</strong>
        <button>Copy Code</button>
    </div>

</div>
<div class="page-header">
    <button class="back" onclick="showPage('home')">← Back</button>
    <h1>My Profile</h1>
    <p>Manage your account</p>
</div>

<div class="profile-card">

    <div class="profile-avatar">L</div>

    <h2>Logeshwari</h2>
    <p>purplebus@example.com</p>

    <div class="profile-menu">
        <button>👤 Profile Information</button>
        <button>🎫 My Bookings</button>
        <button>👥 Saved Passengers</button>
        <button>💳 Payment Methods</button>
        <button>🔔 Notifications</button>
        <button>❓ Help & Support</button>
        <button class="logout">↪ Logout</button>
    </div>

</div>
🚌 PurpleBus
Comfortable journeys. Smarter booking.

© 2026 PurpleBus. All rights reserved.

<script src="script.js"></script>
Result
The Bus Ticket Booking System prototype was successfully designed using Figma.
