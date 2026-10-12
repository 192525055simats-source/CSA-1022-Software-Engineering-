### Software Engineering Lab
Experiment 3– E-Commerce  

### Aim
To design a prototype for E-Commerce Web Application using Figma.

### Tool Used
Figma

### Figma Prototype
https://class-purple-73315546.figma.site

### index html 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NovaMart - E-Commerce</title>

    <link rel="stylesheet" href="style.css">

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
        rel="stylesheet"
    >
</head>

<body>

<!-- ================= NAVBAR ================= -->

<header class="navbar">

    <div class="logo">
        <span>✦</span> NovaMart
    </div>

    <nav>
        <a onclick="showPage('home')">Home</a>
        <a onclick="showPage('shop')">Shop</a>
        <a onclick="showPage('categories')">Categories</a>
        <a onclick="showPage('deals')">Deals</a>
        <a onclick="showPage('orders')">Orders</a>
        <a onclick="showPage('wishlist')">Wishlist</a>
        <a onclick="showPage('help')">Help</a>
    </nav>

    <div class="nav-actions">

        <div class="search-mini">
            <input
                type="text"
                id="searchInput"
                placeholder="Search products..."
                onkeyup="searchProducts()"
            >
            🔍
        </div>

        <button onclick="showPage('notifications')" class="icon-btn">
            🔔
            <span class="badge">3</span>
        </button>

        <button onclick="showPage('cart')" class="icon-btn">
            🛒
            <span class="badge" id="cartCount">0</span>
        </button>

        <button onclick="showPage('profile')" class="profile-btn">
            👤
        </button>

        <button onclick="showPage('login')" class="login-btn">
            Login
        </button>

    </div>

</header>


<!-- ================= MAIN ================= -->

<main>

<!-- ================= HOME ================= -->

<section id="home" class="page active">

    <section class="hero">

        <div class="hero-content">

            <span class="tag">NEW SEASON COLLECTION</span>

            <h1>
                Everything You Need,
                <span>All in One Place</span>
            </h1>

            <p>
                Discover great products, smart prices and effortless
                shopping with NovaMart.
            </p>

            <div class="hero-buttons">

                <button
                    class="primary-btn"
                    onclick="showPage('shop')"
                >
                    Shop Now →
                </button>

                <button
                    class="secondary-btn"
                    onclick="showPage('deals')"
                >
                    View Today's Deals
                </button>

            </div>

        </div>

        <div class="hero-art">

            <div class="floating-card card-one">
                ⭐ 4.9 Rating
            </div>

            <div class="shopping-circle">
                🛍️
            </div>

            <div class="floating-card card-two">
                🚚 Free Delivery
            </div>

        </div>

    </section>


    <!-- CATEGORIES -->

    <section class="section">

        <div class="section-heading">

            <div>
                <span class="small-title">SHOP BY CATEGORY</span>
                <h2>Explore Categories</h2>
            </div>

            <button onclick="showPage('categories')" class="link-btn">
                View All →
            </button>

        </div>

        <div class="category-grid">

            <div class="category-card" onclick="filterCategory('Electronics')">
                <div class="category-icon">💻</div>
                <h3>Electronics</h3>
                <p>1,240 Products</p>
            </div>

            <div class="category-card" onclick="filterCategory('Fashion')">
                <div class="category-icon">👕</div>
                <h3>Fashion</h3>
                <p>2,860 Products</p>
            </div>

            <div class="category-card" onclick="filterCategory('Beauty')">
                <div class="category-icon">💄</div>
                <h3>Beauty</h3>
                <p>980 Products</p>
            </div>

            <div class="category-card" onclick="filterCategory('Home')">
                <div class="category-icon">🏠</div>
                <h3>Home & Living</h3>
                <p>1,540 Products</p>
            </div>

            <div class="category-card" onclick="filterCategory('Sports')">
                <div class="category-icon">⚽</div>
                <h3>Sports</h3>
                <p>720 Products</p>
            </div>

            <div class="category-card" onclick="filterCategory('Accessories')">
                <div class="category-icon">⌚</div>
                <h3>Accessories</h3>
                <p>1,120 Products</p>
            </div>

        </div>

    </section>


    <!-- TRENDING -->

    <section class="section mint-section">

        <div class="section-heading">

            <div>
                <span class="small-title">TRENDING NOW</span>
                <h2>Popular Products</h2>
            </div>

            <button onclick="showPage('shop')" class="link-btn">
                Explore All →
            </button>

        </div>

        <div class="product-grid" id="homeProducts"></div>

    </section>


    <!-- FEATURES -->

    <section class="benefits">

        <div>
            <span>🚚</span>
            <h3>Free Delivery</h3>
            <p>On orders above ₹999</p>
        </div>

        <div>
            <span>↩️</span>
            <h3>Easy Returns</h3>
            <p>30-day return policy</p>
        </div>

        <div>
            <span>🔒</span>
            <h3>Secure Payment</h3>
            <p>100% protected checkout</p>
        </div>

        <div>
            <span>🎁</span>
            <h3>Reward Points</h3>
            <p>Earn points on every order</p>
        </div>

    </section>

</section>


<!-- ================= SHOP ================= -->

<section id="shop" class="page">

    <div class="page-header">

        <div>
            <span class="small-title">NOVA COLLECTION</span>
            <h1>Explore All Products</h1>
            <p>Discover products selected specially for you.</p>
        </div>

        <div class="sort-box">
            <select id="sortSelect" onchange="sortProducts()">
                <option>Recommended</option>
                <option>Price: Low to High</option>
                <option>Price: High to Low</option>
                <option>New Arrivals</option>
            </select>
        </div>

    </div>


    <div class="shop-layout">

        <aside class="filter-sidebar">

            <h3>Filters</h3>

            <div class="filter-group">

                <h4>Categories</h4>

                <label>
                    <input type="checkbox" onchange="filterCategory('Electronics')">
                    Electronics
                </label>

                <label>
                    <input type="checkbox" onchange="filterCategory('Fashion')">
                    Fashion
                </label>

                <label>
                    <input type="checkbox" onchange="filterCategory('Beauty')">
                    Beauty
                </label>

                <label>
                    <input type="checkbox" onchange="filterCategory('Home')">
                    Home & Living
                </label>

                <label>
                    <input type="checkbox" onchange="filterCategory('Sports')">
                    Sports
                </label>

            </div>


            <div class="filter-group">

                <h4>Price Range</h4>

                <input
                    type="range"
                    min="500"
                    max="100000"
                    value="100000"
                    id="priceRange"
                    onchange="filterPrice()"
                >

                <p>Up to ₹<span id="priceValue">100000</span></p>

            </div>


            <div class="filter-group">

                <h4>Customer Rating</h4>

                <label>
                    <input type="checkbox">
                    ⭐⭐⭐⭐⭐
                </label>

                <label>
                    <input type="checkbox">
                    ⭐⭐⭐⭐ & above
                </label>

            </div>


            <div class="filter-group">

                <h4>Availability</h4>

                <label>
                    <input type="checkbox">
                    In Stock
                </label>

            </div>

        </aside>


        <div class="products-area">

            <div class="toolbar">

                <span id="productCount">
                    8 Products found
                </span>

                <button onclick="showPage('shop')">
                    Clear Filters
                </button>

            </div>

            <div class="product-grid" id="shopProducts"></div>

        </div>

    </div>

</section>


<!-- ================= PRODUCT DETAILS ================= -->

<section id="productDetails" class="page">

    <div class="product-detail">

        <div class="product-gallery">

            <div class="main-product-image" id="detailImage">
                📱
            </div>

            <div class="thumbnails">

                <div>📱</div>
                <div>📦</div>
                <div>🔍</div>
                <div>✨</div>

            </div>

        </div>


        <div class="product-information">

            <span class="brand-label" id="detailBrand">
                NovaTech
            </span>

            <h1 id="detailName">
                Nova X Pro Smartphone
            </h1>

            <div class="rating">
                ⭐⭐⭐⭐⭐
                <span>4.8 (1,240 Reviews)</span>
            </div>

            <div class="detail-price">

                <span class="old-price" id="detailOldPrice">
                    ₹69,999
                </span>

                <span class="discount">
                    20% OFF
                </span>

                <h2 id="detailPrice">
                    ₹55,999
                </h2>

            </div>

            <p class="stock">
                ● In Stock — 24 units available
            </p>


            <div class="option-section">

                <h4>Color</h4>

                <button class="color-option">Midnight Black</button>
                <button class="color-option">Ocean Blue</button>
                <button class="color-option">Silver</button>

            </div>


            <div class="option-section">

                <h4>Size</h4>

                <button class="size-option">128 GB</button>
                <button class="size-option">256 GB</button>
                <button class="size-option">512 GB</button>

            </div>


            <div class="quantity">

                <button onclick="changeQuantity(-1)">−</button>

                <span id="quantity">1</span>

                <button onclick="changeQuantity(1)">+</button>

            </div>


            <div class="detail-buttons">

                <button
                    class="primary-btn"
                    onclick="addCurrentProduct()"
                >
                    🛒 Add to Cart
                </button>

                <button
                    class="buy-btn"
                    onclick="buyNow()"
                >
                    Buy Now
                </button>

                <button
                    class="heart-large"
                    onclick="addToWishlist(currentProduct)"
                >
                    ♡
                </button>

            </div>


            <div class="info-cards">

                <div>
                    🚚
                    <strong>Free Delivery</strong>
                    <small>On orders above ₹999</small>
                </div>

                <div>
                    ↩️
                    <strong>Easy Returns</strong>
                    <small>30 day returns</small>
                </div>

                <div>
                    🔒
                    <strong>Secure Payment</strong>
                    <small>100% secure</small>
                </div>

                <div>
                    🛡️
                    <strong>Warranty</strong>
                    <small>1 year warranty</small>
                </div>

            </div>

        </div>

    </div>


    <div class="product-tabs">

        <button onclick="showTab('description')">
            Description
        </button>

        <button onclick="showTab('specifications')">
            Specifications
        </button>

        <button onclick="showTab('reviews')">
            Customer Reviews
        </button>

        <button onclick="showTab('related')">
            Related Products
        </button>

    </div>


    <div id="description" class="tab-content active-tab">

        <h2>Product Description</h2>

        <p>
            Experience premium performance with NovaMart's latest
            generation products. Designed with advanced technology,
            premium materials and an elegant modern design.
        </p>

    </div>


    <div id="specifications" class="tab-content">

        <h2>Specifications</h2>

        <p>Display: 6.7 inch AMOLED</p>
        <p>Processor: NovaCore X1</p>
        <p>Storage: 256 GB</p>
        <p>Battery: 5000 mAh</p>

    </div>


    <div id="reviews" class="tab-content">

        <h2>Customer Reviews</h2>

        <p>⭐⭐⭐⭐⭐ Excellent product and fast delivery.</p>
        <p>⭐⭐⭐⭐⭐ Amazing quality.</p>

    </div>


    <div id="related" class="tab-content">

        <h2>Related Products</h2>

        <div class="product-grid" id="relatedProducts"></div>

    </div>

</section>


<!-- ================= CART ================= -->

<section id="cart" class="page">

    <div class="page-header">

        <div>
            <span class="small-title">SHOPPING BAG</span>
            <h1>Your Shopping Cart</h1>
        </div>

    </div>


    <div class="cart-layout">

        <div id="cartItems" class="cart-items"></div>


        <div class="order-summary">

            <h2>Order Summary</h2>

            <div class="summary-row">
                <span>Subtotal</span>
                <strong id="subtotal">₹0</strong>
            </div>

            <div class="summary-row">
                <span>Product Discount</span>
                <strong class="green" id="cartDiscount">
                    -₹0
                </strong>
            </div>

            <div class="summary-row">
                <span>Delivery Fee</span>
                <strong id="deliveryFee">₹0</strong>
            </div>

            <div class="summary-row">
                <span>Coupon Discount</span>
                <strong class="green">-₹0</strong>
            </div>

            <hr>

            <div class="summary-total">
                <span>Total Amount</span>
                <strong id="cartTotal">₹0</strong>
            </div>

            <div class="coupon-box">

                <input
                    type="text"
                    id="couponInput"
                    placeholder="Enter Coupon Code"
                >

                <button onclick="applyCoupon()">
                    Apply
                </button>

            </div>

            <p class="free-delivery">
                ✓ You are eligible for FREE delivery.
            </p>

            <button
                class="primary-btn full-btn"
                onclick="showPage('checkout')"
            >
                Proceed to Checkout →
            </button>

        </div>

    </div>

</section>


<!-- ================= CHECKOUT ================= -->

<section id="checkout" class="page">

    <div class="page-header">

        <h1>Checkout</h1>

        <div class="progress">

            <span class="completed">1 Address</span>
            <span>→</span>
            <span class="active-progress">2 Delivery</span>
            <span>→</span>
            <span>3 Payment</span>
            <span>→</span>
            <span>4 Confirmation</span>

        </div>

    </div>


    <div class="checkout-layout">

        <div class="checkout-main">

            <div class="checkout-card">

                <div class="card-title">
                    <h2>Delivery Address</h2>
                    <button onclick="addAddress()">
                        + Add New Address
                    </button>
                </div>


                <div class="address-grid">

                    <div class="address-card selected-address">

                        <input type="radio" checked name="address">

                        <h3>🏠 Home</h3>

                        <strong>Logi</strong>

                        <p>
                            +91 98765 43210
                        </p>

                        <p>
                            24, Main Road, Chennai,
                            Tamil Nadu - 600001
                        </p>

                        <button>Edit</button>

                    </div>


                    <div class="address-card">

                        <input type="radio" name="address">

                        <h3>🏢 Office</h3>

                        <strong>Logi</strong>

                        <p>
                            +91 98765 43210
                        </p>

                        <p>
                            Nova Business Park,
                            Chennai, Tamil Nadu
                        </p>

                        <button>Edit</button>

                    </div>

                </div>

            </div>


            <div class="checkout-card">

                <h2>Order Items</h2>

                <div id="checkoutItems"></div>

            </div>


            <div class="checkout-card">

                <h2>Delivery Options</h2>

                <label class="delivery-option">

                    <input type="radio" name="delivery" checked>

                    <div>
                        <strong>Standard Delivery</strong>
                        <p>Delivery in 3–5 days</p>
                    </div>

                    <strong>FREE</strong>

                </label>


                <label class="delivery-option">

                    <input type="radio" name="delivery">

                    <div>
                        <strong>Express Delivery</strong>
                        <p>Delivery in 1–2 days</p>
                    </div>

                    <strong>₹99</strong>

                </label>


                <button
                    class="primary-btn"
                    onclick="showPage('payment')"
                >
                    Continue to Payment →
                </button>

            </div>

        </div>


        <div class="order-summary">

            <h2>Order Summary</h2>

            <div class="summary-row">
                <span>Product Total</span>
                <strong id="checkoutTotal">
                    ₹0
                </strong>
            </div>

            <div class="summary-row">
                <span>Discount</span>
                <strong class="green">
                    -₹1,000
                </strong>
            </div>

            <div class="summary-row">
                <span>Delivery</span>
                <strong>FREE</strong>
            </div>

            <hr>

            <div class="summary-total">
                <span>Final Amount</span>
                <strong id="checkoutFinal">
                    ₹0
                </strong>
            </div>

        </div>

    </div>

</section>


<!-- ================= PAYMENT ================= -->

<section id="payment" class="page">

    <div class="page-header">

        <div>
            <span class="small-title">SECURE CHECKOUT</span>
            <h1>Choose Payment Method</h1>
        </div>

        <div class="secure-payment">
            🔒 100% Secure Payment
        </div>

    </div>


    <div class="payment-layout">

        <div class="payment-methods">

            <div class="payment-option active-payment">
                <span>📱</span>
                <strong>UPI</strong>
                <input type="radio" name="payment" checked>
            </div>

            <div class="payment-option">
                <span>💳</span>
                <strong>Credit / Debit Card</strong>
                <input type="radio" name="payment">
            </div>

            <div class="payment-option">
                <span>🏦</span>
                <strong>Net Banking</strong>
                <input type="radio" name="payment">
            </div>

            <div class="payment-option">
                <span>👛</span>
                <strong>Digital Wallet</strong>
                <input type="radio" name="payment">
            </div>

            <div class="payment-option">
                <span>💵</span>
                <strong>Cash on Delivery</strong>
                <input type="radio" name="payment">
            </div>


            <div class="card-form">

                <h2>Card Payment</h2>

                <label>Card Number</label>
                <input
                    type="text"
                    placeholder="1234 5678 9012 3456"
                >

                <label>Cardholder Name</label>
                <input
                    type="text"
                    placeholder="Name on card"
                >

                <div class="two-column">

                    <div>
                        <label>Expiry Date</label>
                        <input
                            type="text"
                            placeholder="MM / YY"
                        >
                    </div>

                    <div>
                        <label>CVV</label>
                        <input
                            type="password"
                            placeholder="•••"
                        >
                    </div>

                </div>

                <label>
                    <input type="checkbox">
                    Save Card for Future Payments
                </label>

            </div>

        </div>


        <div class="order-summary">

            <h2>Order Summary</h2>

            <div class="summary-row">
                <span>Product Total</span>
                <strong id="paymentTotal">
                    ₹0
                </strong>
            </div>

            <div class="summary-row">
                <span>Discount</span>
                <strong class="green">
                    -₹1,000
                </strong>
            </div>

            <div class="summary-row">
                <span>Delivery Fee</span>
                <strong>FREE</strong>
            </div>

            <hr>

            <div class="summary-total">
                <span>Final Amount</span>
                <strong id="paymentFinal">
                    ₹0
                </strong>
            </div>

            <button
                class="primary-btn full-btn"
                onclick="makePayment()"
            >
                🔒 Pay Securely
            </button>

        </div>

    </div>

</section>


<!-- ================= CONFIRMATION ================= -->

<section id="confirmation" class="page">

    <div class="confirmation-page">

        <div class="success-animation">
            ✓
        </div>

        <h1>Order Confirmed!</h1>

        <p>
            Thank you for shopping with NovaMart.
        </p>


        <div class="confirmation-layout">

            <div class="confirmation-details">

                <div class="order-id">
                    Order #NM20261001
                </div>

                <div class="confirm-row">
                    <span>Order Date</span>
                    <strong>12 October 2026</strong>
                </div>

                <div class="confirm-row">
                    <span>Customer</span>
                    <strong>Logi</strong>
                </div>

                <div class="confirm-row">
                    <span>Payment</span>
                    <strong>UPI</strong>
                </div>

                <div class="confirm-row">
                    <span>Delivery</span>
                    <strong>24–27 October 2026</strong>
                </div>

                <div class="confirm-row">
                    <span>Total Amount</span>
                    <strong id="confirmationTotal">
                        ₹0
                    </strong>
                </div>

            </div>


            <div class="delivery-art">
                🚚
                <span>📦</span>
            </div>

        </div>


        <div class="confirmation-buttons">

            <button
                class="primary-btn"
                onclick="showPage('tracking')"
            >
                Track My Order
            </button>

            <button
                class="secondary-btn"
                onclick="showPage('orders')"
            >
                View My Orders
            </button>

            <button
                class="secondary-btn"
                onclick="showPage('shop')"
            >
                Continue Shopping
            </button>

        </div>

    </div>

</section>


<!-- ================= ORDERS ================= -->

<section id="orders" class="page">

    <div class="page-header">

        <div>
            <span class="small-title">MY ACCOUNT</span>
            <h1>My Orders</h1>
        </div>

    </div>


    <div class="order-tabs">

        <button class="active">All Orders</button>
        <button>Processing</button>
        <button>Shipped</button>
        <button>Delivered</button>
        <button>Cancelled</button>

    </div>


    <div class="order-list">

        <div class="order-card">

            <div class="order-product">
                <div class="small-product-image">
                    📱
                </div>

                <div>
                    <h3>Nova X Pro Smartphone</h3>
                    <p>Order #NM20261001</p>
                    <p>Ordered on 12 Oct 2026</p>
                </div>
            </div>

            <div>
                <strong>₹55,999</strong>
            </div>

            <div>
                <span class="status shipped">
                    ● Shipped
                </span>

                <p>Expected: 24 Oct</p>
            </div>

            <div class="order-actions">

                <button onclick="showPage('tracking')">
                    Track Order
                </button>

                <button>
                    View Details
                </button>

                <button onclick="addToCart(products[0])">
                    Buy Again
                </button>

            </div>

        </div>


        <div class="order-card">

            <div class="order-product">

                <div class="small-product-image">
                    🎧
                </div>

                <div>
                    <h3>NovaPods Wireless Earbuds</h3>
                    <p>Order #NM20260920</p>
                    <p>Ordered on 20 Sep 2026</p>
                </div>

            </div>

            <div>
                <strong>₹3,499</strong>
            </div>

            <div>
                <span class="status delivered">
                    ● Delivered
                </span>

                <p>Delivered: 23 Sep</p>
            </div>

            <div class="order-actions">

                <button>
                    View Details
                </button>

                <button onclick="addToCart(products[1])">
                    Buy Again
                </button>

            </div>

        </div>

    </div>

</section>


<!-- ================= WISHLIST ================= -->

<section id="wishlist" class="page">

    <div class="page-header">

        <div>
            <span class="small-title">SAVED PRODUCTS</span>
            <h1>My Wishlist</h1>
        </div>

    </div>

    <div class="product-grid" id="wishlistProducts"></div>

</section>


<!-- ================= DEALS ================= -->

<section id="deals" class="page">

    <div class="deal-hero">

        <div>

            <span class="tag">LIMITED TIME OFFER</span>

            <h1>Flash Sale</h1>

            <p>
                Save big on your favorite products.
            </p>

            <div class="countdown">

                <div>
                    <strong>03</strong>
                    <small>Hours</small>
                </div>

                <span>:</span>

                <div>
                    <strong>24</strong>
                    <small>Minutes</small>
                </div>

                <span>:</span>

                <div>
                    <strong>16</strong>
                    <small>Seconds</small>
                </div>

            </div>

        </div>

        <div class="deal-art">
            ⚡
        </div>

    </div>


    <section class="section">

        <div class="section-heading">
            <h2>Today's Deals</h2>
        </div>

        <div class="product-grid" id="dealProducts"></div>

    </section>


    <div class="deal-categories">

        <div>
            <span>💻</span>
            <h2>Electronics</h2>
            <p>Up to 40% OFF</p>
        </div>

        <div>
            <span>👕</span>
            <h2>Fashion</h2>
            <p>Up to 60% OFF</p>
        </div>

        <div>
            <span>🏠</span>
            <h2>Home & Living</h2>
            <p>Up to 45% OFF</p>
        </div>

        <div>
            <span>⌚</span>
            <h2>Accessories</h2>
            <p>Up to 50% OFF</p>
        </div>

    </div>

</section>


<!-- ================= PROFILE ================= -->

<section id="profile" class="page">

    <div class="profile-header">

        <div class="profile-avatar">
            👤
        </div>

        <div>
            <h1>Logi</h1>
            <p>logi@example.com</p>
            <p>+91 98765 43210</p>
        </div>

    </div>


    <div class="dashboard-grid">

        <div>
            <span>📦</span>
            <strong>24</strong>
            <p>Total Orders</p>
        </div>

        <div>
            <span>✓</span>
            <strong>20</strong>
            <p>Delivered Orders</p>
        </div>

        <div>
            <span>♡</span>
            <strong>8</strong>
            <p>Wishlist Items</p>
        </div>

        <div>
            <span>🎁</span>
            <strong>2,450</strong>
            <p>Reward Points</p>
        </div>

    </div>


    <div class="profile-layout">

        <aside class="profile-menu">

            <button onclick="showPage('orders')">
                📦 My Orders
            </button>

            <button onclick="showPage('wishlist')">
                ♡ Wishlist
            </button>

            <button>
                🏠 Saved Addresses
            </button>

            <button>
                💳 Payment Methods
            </button>

            <button onclick="showPage('notifications')">
                🔔 Notifications
            </button>

            <button>
                ⚙️ Account Settings
            </button>

            <button onclick="showPage('help')">
                ❓ Help & Support
            </button>

            <button onclick="showPage('login')">
                🚪 Logout
            </button>

        </aside>


        <div class="profile-content">

            <h2>Account Overview</h2>

            <div class="profile-card">

                <h3>Reward Points</h3>

                <div class="reward-progress">
                    <span></span>
                </div>

                <p>
                    You have 2,450 reward points.
                </p>

            </div>

        </div>

    </div>

</section>


<!-- ================= TRACKING ================= -->

<section id="tracking" class="page">

    <div class="page-header">

        <div>
            <span class="small-title">DELIVERY</span>
            <h1>Track Your Order</h1>
        </div>

    </div>


    <div class="tracking-card">

        <div class="tracking-header">

            <div>
                <h2>Order #NM20261001</h2>
                <p>Expected delivery: 24 October 2026</p>
            </div>

            <span class="status shipped">
                ● Shipped
            </span>

        </div>


        <div class="timeline">

            <div class="timeline-step completed-step">
                <span>✓</span>
                <strong>Order Placed</strong>
                <small>12 Oct</small>
            </div>

            <div class="timeline-step completed-step">
                <span>✓</span>
                <strong>Order Confirmed</strong>
                <small>12 Oct</small>
            </div>

            <div class="timeline-step completed-step">
                <span>✓</span>
                <strong>Packed</strong>
                <small>13 Oct</small>
            </div>

            <div class="timeline-step current-step">
                <span>●</span>
                <strong>Shipped</strong>
                <small>14 Oct</small>
            </div>

            <div class="timeline-step">
                <span>○</span>
                <strong>Out for Delivery</strong>
                <small>24 Oct</small>
            </div>

            <div class="timeline-step">
                <span>○</span>
                <strong>Delivered</strong>
                <small>24 Oct</small>
            </div>

        </div>


        <div class="tracking-info">

            <div>
                <h3>📍 Current Location</h3>
                <p>Bengaluru Distribution Center</p>
            </div>

            <div>
                <h3>🚚 Delivery Partner</h3>
                <p>NovaExpress</p>
            </div>

            <div>
                <h3>🔢 Tracking Number</h3>
                <p>NMEX123456789</p>
            </div>

        </div>


        <div class="map">

            <div class="map-route">
                🏠 ───────── 🚚 ───────── 📦
            </div>

        </div>

    </div>

</section>


<!-- ================= NOTIFICATIONS ================= -->

<section id="notifications" class="page">

    <div class="page-header">

        <div>
            <span class="small-title">UPDATES</span>
            <h1>Notifications</h1>
        </div>

    </div>


    <div class="notification-list">

        <div class="notification unread">

            <span>🚚</span>

            <div>
                <h3>Your order has been shipped.</h3>
                <p>Order #NM20261001 is on the way.</p>
                <small>10 minutes ago</small>
            </div>

        </div>


        <div class="notification unread">

            <span>⚡</span>

            <div>
                <h3>Flash Sale starts in 30 minutes.</h3>
                <p>Get up to 70% off selected products.</p>
                <small>1 hour ago</small>
            </div>

        </div>


        <div class="notification">

            <span>💳</span>

            <div>
                <h3>Your payment was successful.</h3>
                <p>Payment of ₹55,999 received.</p>
                <small>Yesterday</small>
            </div>

        </div>


        <div class="notification">

            <span>📦</span>

            <div>
                <h3>Your order will arrive tomorrow.</h3>
                <p>Keep your phone available for delivery.</p>
                <small>Yesterday</small>
            </div>

        </div>

    </div>

</section>


<!-- ================= CATEGORIES ================= -->

<section id="categories" class="page">

    <div class="page-header">

        <div>
            <span class="small-title">DISCOVER</span>
            <h1>Shop by Category</h1>
        </div>

    </div>

    <div class="category-grid large-categories">

        <div class="category-card">
            <div class="category-icon">💻</div>
            <h2>Electronics</h2>
            <p>1,240 Products</p>
            <button onclick="filterCategory('Electronics')">
                Explore →
            </button>
        </div>

        <div class="category-card">
            <div class="category-icon">👕</div>
            <h2>Fashion</h2>
            <p>2,860 Products</p>
            <button onclick="filterCategory('Fashion')">
                Explore →
            </button>
        </div>

        <div class="category-card">
            <div class="category-icon">💄</div>
            <h2>Beauty</h2>
            <p>980 Products</p>
            <button onclick="filterCategory('Beauty')">
                Explore →
            </button>
        </div>

        <div class="category-card">
            <div class="category-icon">🏠</div>
            <h2>Home & Living</h2>
            <p>1,540 Products</p>
            <button onclick="filterCategory('Home')">
                Explore →
            </button>
        </div>

        <div class="category-card">
            <div class="category-icon">⚽</div>
            <h2>Sports</h2>
            <p>720 Products</p>
            <button onclick="filterCategory('Sports')">
                Explore →
            </button>
        </div>

        <div class="category-card">
            <div class="category-icon">⌚</div>
            <h2>Accessories</h2>
            <p>1,120 Products</p>
            <button onclick="filterCategory('Accessories')">
                Explore →
            </button>
        </div>

    </div>

</section>


<!-- ================= HELP ================= -->

<section id="help" class="page">

    <div class="page-header">

        <div>
            <span class="small-title">SUPPORT CENTER</span>
            <h1>How Can We Help?</h1>
        </div>

    </div>

    <div class="help-grid">

        <div>
            <span>📦</span>
            <h2>Track Order</h2>
            <p>Check your latest order status.</p>
            <button onclick="showPage('tracking')">Track Now</button>
        </div>

        <div>
            <span>↩️</span>
            <h2>Returns</h2>
            <p>Learn about our easy return policy.</p>
            <button>Learn More</button>
        </div>

        <div>
            <span>💳</span>
            <h2>Payments</h2>
            <p>Get help with payment problems.</p>
            <button>Get Help</button>
        </div>

        <div>
            <span>💬</span>
            <h2>Contact Support</h2>
            <p>Our support team is ready to help.</p>
            <button>Contact Us</button>
        </div>

    </div>

</section>


<!-- ================= LOGIN ================= -->

<section id="login" class="page">

    <div class="auth-container">

        <div class="auth-box">

            <div class="auth-logo">
                ✦ NovaMart
            </div>

            <h1>Welcome Back</h1>

            <p>Login to continue shopping.</p>

            <label>Email Address</label>

            <input
                type="email"
                id="loginEmail"
                placeholder="Enter your email"
            >

            <label>Password</label>

            <input
                type="password"
                id="loginPassword"
                placeholder="Enter your password"
            >

            <div class="auth-options">

                <label>
                    <input type="checkbox">
                    Remember me
                </label>

                <a>Forgot Password?</a>

            </div>

            <button
                class="primary-btn full-btn"
                onclick="loginUser()"
            >
                Login
            </button>

            <p class="auth-bottom">
                Don't have an account?
                <a onclick="showPage('signup')">
                    Sign Up
                </a>
            </p>

        </div>

    </div>

</section>


<!-- ================= SIGNUP ================= -->

<section id="signup" class="page">

    <div class="auth-container">

        <div class="auth-box">

            <div class="auth-logo">
                ✦ NovaMart
            </div>

            <h1>Create Account</h1>

            <p>Join millions of shoppers.</p>

            <label>Full Name</label>

            <input
                type="text"
                id="signupName"
                placeholder="Enter your name"
            >

            <label>Email Address</label>

            <input
                type="email"
                id="signupEmail"
                placeholder="Enter your email"
            >

            <label>Mobile Number</label>

            <input
                type="tel"
                placeholder="+91"
            >

            <label>Password</label>

            <input
                type="password"
                id="signupPassword"
                placeholder="Create password"
            >

            <button
                class="primary-btn full-btn"
                onclick="signupUser()"
            >
                Create Account
            </button>

            <p class="auth-bottom">
                Already have an account?
                <a onclick="showPage('login')">
                    Login
                </a>
            </p>

        </div>

    </div>

</section>

</main>


<!-- ================= FOOTER ================= -->

<footer>

    <div class="footer-grid">

        <div>

            <div class="logo footer-logo">
                <span>✦</span> NovaMart
            </div>

            <p>
                Everything you need, all in one place.
            </p>

        </div>


        <div>

            <h3>Shop</h3>

            <a onclick="showPage('shop')">All Products</a>
            <a onclick="showPage('categories')">Categories</a>
            <a onclick="showPage('deals')">Deals</a>
            <a onclick="showPage('wishlist')">Wishlist</a>

        </div>


        <div>

            <h3>Account</h3>

            <a onclick="showPage('orders')">My Orders</a>
            <a onclick="showPage('profile')">Profile</a>
            <a onclick="showPage('notifications')">Notifications</a>
            <a onclick="showPage('help')">Help</a>

        </div>


        <div>

            <h3>Contact</h3>

            <p>📧 support@novamart.com</p>
            <p>📞 +91 98765 43210</p>
            <p>📍 Chennai, India</p>

        </div>

    </div>


    <div class="footer-bottom">
        © 2026 NovaMart. All Rights Reserved.
    </div>

</footer>


<script src="script.js"></script>

</body>
</html>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    --teal: #0b9f8f;
    --teal-dark: #08786c;
    --navy: #102a43;
    --mint: #e8f8f3;
    --light: #f5f8f8;
    --gray: #6b7c93;
    --border: #e1e8e7;
    --white: #ffffff;
    --orange: #ff9f43;
    --red: #e85d5d;
}

body {
    font-family: "Inter", Arial, sans-serif;
    background: var(--light);
    color: var(--navy);
}

button,
input,
select {
    font-family: inherit;
}

button {
    cursor: pointer;
}

.navbar {
    height: 76px;
    padding: 0 5%;
    background: white;
    display: flex;
    align-items: center;
    gap: 35px;
    border-bottom: 1px solid var(--border);
    position: sticky;
    top: 0;
    z-index: 1000;
}

.logo {
    font-size: 25px;
    font-weight: 800;
    color: var(--navy);
    white-space: nowrap;
}

.logo span {
    color: var(--teal);
}

nav {
    display: flex;
    gap: 22px;
    flex: 1;
}

nav a {
    color: #425466;
    font-size: 14px;
    font-weight: 600;
    cursor: pointer;
}

nav a:hover {
    color: var(--teal);
}

.nav-actions {
    display: flex;
    align-items: center;
    gap: 10px;
}

.search-mini {
    background: #f3f7f7;
    border: 1px solid var(--border);
    padding: 7px 10px;
    border-radius: 9px;
    display: flex;
    align-items: center;
}

.search-mini input {
    width: 145px;
    border: none;
    outline: none;
    background: transparent;
}

.icon-btn,
.profile-btn {
    position: relative;
    background: white;
    border: 1px solid var(--border);
    width: 38px;
    height: 38px;
    border-radius: 9px;
}

.badge {
    position: absolute;
    top: -6px;
    right: -5px;
    background: var(--teal);
    color: white;
    width: 18px;
    height: 18px;
    border-radius: 50%;
    font-size: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.login-btn {
    background: var(--teal);
    color: white;
    border: none;
    padding: 10px 17px;
    border-radius: 8px;
    font-weight: 700;
}

.page {
    display: none;
}

.page.active {
    display: block;
}

.hero {
    min-height: 510px;
    padding: 80px 8%;
    background: linear-gradient(120deg, #e8f8f3, #f7fffd);
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.hero-content {
    width: 52%;
}

.tag,
.small-title {
    color: var(--teal);
    font-size: 12px;
    font-weight: 800;
    letter-spacing: 1.5px;
}

.hero h1 {
    font-size: 54px;
    line-height: 1.1;
    margin: 18px 0;
}

.hero h1 span {
    color: var(--teal);
}

.hero p {
    color: var(--gray);
    font-size: 18px;
    line-height: 1.7;
    max-width: 600px;
}

.hero-buttons {
    margin-top: 30px;
    display: flex;
    gap: 14px;
}

.primary-btn {
    background: var(--teal);
    color: white;
    border: none;
    padding: 14px 24px;
    border-radius: 9px;
    font-weight: 700;
    transition: .2s;
}

.primary-btn:hover {
    background: var(--teal-dark);
    transform: translateY(-2px);
}

.secondary-btn {
    background: white;
    color: var(--navy);
    border: 1px solid var(--border);
    padding: 14px 24px;
    border-radius: 9px;
    font-weight: 700;
}

.hero-art {
    width: 40%;
    height: 350px;
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
}

.shopping-circle {
    width: 290px;
    height: 290px;
    border-radius: 50%;
    background: linear-gradient(145deg, var(--teal), #63cdbf);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 120px;
    box-shadow: 0 25px 50px rgba(11,159,143,.25);
}

.floating-card {
    position: absolute;
    background: white;
    padding: 14px 18px;
    border-radius: 12px;
    box-shadow: 0 12px 30px rgba(16,42,67,.12);
    font-weight: 700;
}

.card-one {
    top: 30px;
    left: 20px;
}

.card-two {
    right: 15px;
    bottom: 35px;
}

.section {
    padding: 65px 7%;
}

.mint-section {
    background: var(--mint);
}

.section-heading {
    display: flex;
    align-items: end;
    justify-content: space-between;
    margin-bottom: 28px;
}

.section-heading h2 {
    font-size: 30px;
    margin-top: 8px;
}

.link-btn {
    background: none;
    border: none;
    color: var(--teal);
    font-weight: 700;
}

.category-grid {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    gap: 18px;
}

.category-card {
    background: white;
    border: 1px solid var(--border);
    padding: 25px 15px;
    border-radius: 15px;
    text-align: center;
    transition: .25s;
}

.category-card:hover {
    transform: translateY(-7px);
    box-shadow: 0 15px 30px rgba(16,42,67,.10);
}

.category-icon {
    width: 70px;
    height: 70px;
    margin: auto auto 15px;
    border-radius: 50%;
    background: var(--mint);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 34px;
}

.category-card h3 {
    margin-bottom: 7px;
}

.category-card p {
    color: var(--gray);
    font-size: 13px;
}

.category-card button {
    margin-top: 15px;
    padding: 9px 15px;
    border: none;
    background: var(--teal);
    color: white;
    border-radius: 7px;
}

.product-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
}

.product-card {
    background: white;
    border: 1px solid var(--border);
    border-radius: 15px;
    overflow: hidden;
    transition: .25s;
    position: relative;
}

.product-card:hover {
    transform: translateY(-7px);
    box-shadow: 0 15px 35px rgba(16,42,67,.13);
}

.product-image {
    height: 210px;
    background: #f1f7f6;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 85px;
    position: relative;
}

.discount-badge {
    position: absolute;
    left: 12px;
    top: 12px;
    background: var(--teal);
    color: white;
    padding: 6px 9px;
    border-radius: 6px;
    font-size: 11px;
    font-weight: 800;
}

.wishlist {
    position: absolute;
    right: 12px;
    top: 12px;
    width: 35px;
    height: 35px;
    border-radius: 50%;
    background: white;
    border: none;
    font-size: 18px;
}

.product-content {
    padding: 18px;
}

.brand {
    color: var(--teal);
    font-size: 12px;
    font-weight: 700;
}

.product-content h3 {
    margin: 7px 0;
    font-size: 16px;
}

.rating {
    color: #e69b22;
    font-size: 13px;
    margin: 8px 0;
}

.rating span {
    color: var(--gray);
}

.old-price {
    color: #98a6b3;
    text-decoration: line-through;
    font-size: 13px;
    margin-right: 7px;
}

.current-price {
    font-size: 19px;
    font-weight: 800;
}

.add-cart {
    width: 100%;
    margin-top: 14px;
    padding: 11px;
    border: none;
    background: var(--navy);
    color: white;
    border-radius: 8px;
    font-weight: 700;
}

.add-cart:hover {
    background: var(--teal);
}

.benefits {
    padding: 35px 7%;
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    background: white;
}

.benefits div {
    display: grid;
    grid-template-columns: 45px 1fr;
    column-gap: 10px;
}

.benefits span {
    grid-row: span 2;
    font-size: 28px;
}

.benefits p {
    color: var(--gray);
    font-size: 12px;
}


/* SHOP */

.page-header {
    padding: 45px 7%;
    background: white;
    border-bottom: 1px solid var(--border);
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.page-header h1 {
    font-size: 34px;
    margin: 8px 0;
}

.page-header p {
    color: var(--gray);
}

.sort-box select {
    padding: 12px 18px;
    border: 1px solid var(--border);
    border-radius: 8px;
    background: white;
}

.shop-layout {
    padding: 35px 7%;
    display: grid;
    grid-template-columns: 230px 1fr;
    gap: 30px;
}

.filter-sidebar {
    background: white;
    padding: 22px;
    border-radius: 12px;
    border: 1px solid var(--border);
    height: fit-content;
}

.filter-sidebar h3 {
    font-size: 20px;
    margin-bottom: 25px;
}

.filter-group {
    padding: 20px 0;
    border-top: 1px solid var(--border);
}

.filter-group h4 {
    margin-bottom: 13px;
}

.filter-group label {
    display: block;
    margin: 10px 0;
    color: var(--gray);
    font-size: 13px;
}

.filter-group input {
    width: auto;
    margin-right: 7px;
}

.products-area {
    min-width: 0;
}

.toolbar {
    display: flex;
    justify-content: space-between;
    margin-bottom: 20px;
    color: var(--gray);
}

.toolbar button {
    border: none;
    background: none;
    color: var(--teal);
}


/* PRODUCT DETAILS */

.product-detail {
    padding: 60px 8%;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 70px;
    background: white;
}

.main-product-image {
    height: 480px;
    background: var(--mint);
    border-radius: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 180px;
}

.thumbnails {
    display: flex;
    gap: 15px;
    margin-top: 15px;
}

.thumbnails div {
    width: 75px;
    height: 75px;
    background: #f2f6f5;
    border-radius: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 30px;
}

.brand-label {
    color: var(--teal);
    font-weight: 800;
}

.product-information h1 {
    font-size: 38px;
    margin: 12px 0;
}

.detail-price {
    margin: 25px 0;
}

.detail-price h2 {
    font-size: 36px;
    margin-top: 10px;
}

.discount {
    color: var(--teal);
    font-weight: 800;
}

.stock {
    color: #14945e;
    font-weight: 700;
}

.option-section {
    margin: 25px 0;
}

.option-section h4 {
    margin-bottom: 10px;
}

.color-option,
.size-option {
    background: white;
    border: 1px solid var(--border);
    padding: 10px 15px;
    border-radius: 7px;
    margin-right: 8px;
}

.color-option:hover,
.size-option:hover {
    border-color: var(--teal);
}

.quantity {
    display: flex;
    width: 125px;
    border: 1px solid var(--border);
    border-radius: 8px;
    overflow: hidden;
    margin-bottom: 20px;
}

.quantity button {
    width: 40px;
    border: none;
    background: #f4f7f7;
}

.quantity span {
    width: 45px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.detail-buttons {
    display: flex;
    gap: 10px;
}

.buy-btn {
    background: var(--navy);
    color: white;
    border: none;
    padding: 14px 25px;
    border-radius: 9px;
    font-weight: 700;
}

.heart-large {
    width: 50px;
    border: 1px solid var(--border);
    background: white;
    border-radius: 9px;
    font-size: 22px;
}

.info-cards {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 10px;
    margin-top: 30px;
}

.info-cards div {
    background: var(--mint);
    padding: 15px;
    border-radius: 10px;
    display: grid;
    grid-template-columns: 35px 1fr;
}

.info-cards strong,
.info-cards small {
    display: block;
}

.info-cards small {
    color: var(--gray);
}

.product-tabs {
    padding: 0 8%;
    background: white;
    border-bottom: 1px solid var(--border);
}

.product-tabs button {
    padding: 20px 25px;
    border: none;
    background: white;
    font-weight: 700;
    color: var(--gray);
}

.product-tabs button:hover {
    color: var(--teal);
}

.tab-content {
    display: none;
    padding: 35px 8%;
    background: white;
}

.active-tab {
    display: block;
}


/* CART */

.cart-layout,
.checkout-layout,
.payment-layout {
    padding: 45px 7%;
    display: grid;
    grid-template-columns: 1fr 340px;
    gap: 30px;
}

.cart-item {
    background: white;
    padding: 20px;
    border-radius: 12px;
    border: 1px solid var(--border);
    margin-bottom: 15px;
    display: flex;
    align-items: center;
    gap: 20px;
}

.cart-item-image {
    width: 100px;
    height: 100px;
    background: var(--mint);
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 10px;
    font-size: 45px;
}

.cart-item-info {
    flex: 1;
}

.cart-item-info h3 {
    margin-bottom: 8px;
}

.cart-item-info p {
    color: var(--gray);
    font-size: 13px;
}

.cart-controls button {
    width: 30px;
    height: 30px;
    border: 1px solid var(--border);
    background: white;
}

.cart-controls span {
    padding: 0 12px;
}

.remove-btn {
    border: none;
    background: none;
    color: var(--red);
}

.order-summary {
    background: white;
    padding: 25px;
    border-radius: 14px;
    border: 1px solid var(--border);
    height: fit-content;
    position: sticky;
    top: 100px;
}

.order-summary h2 {
    margin-bottom: 22px;
}

.summary-row {
    display: flex;
    justify-content: space-between;
    margin: 16px 0;
    color: var(--gray);
}

.summary-total {
    display: flex;
    justify-content: space-between;
    font-size: 20px;
    margin: 20px 0;
}

.green {
    color: #14945e;
}

.coupon-box {
    display: flex;
    margin: 20px 0;
}

.coupon-box input {
    flex: 1;
    border: 1px solid var(--border);
    padding: 12px;
}

.coupon-box button {
    border: none;
    background: var(--navy);
    color: white;
    padding: 0 15px;
}

.free-delivery {
    background: var(--mint);
    padding: 12px;
    border-radius: 8px;
    color: var(--teal-dark);
    font-size: 12px;
}

.full-btn {
    width: 100%;
    margin-top: 15px;
}


/* CHECKOUT */

.progress {
    display: flex;
    gap: 10px;
    color: #9aa7b2;
    font-size: 13px;
}

.completed,
.active-progress {
    color: var(--teal);
    font-weight: 800;
}

.checkout-card {
    background: white;
    padding: 25px;
    border: 1px solid var(--border);
    border-radius: 14px;
    margin-bottom: 20px;
}

.card-title {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
}

.card-title button {
    border: none;
    background: none;
    color: var(--teal);
    font-weight: 700;
}

.address-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 15px;
}

.address-card {
    padding: 20px;
    border: 2px solid var(--border);
    border-radius: 10px;
}

.selected-address {
    border-color: var(--teal);
    background: #f2fbf9;
}

.address-card h3 {
    margin: 10px 0;
}

.address-card p {
    color: var(--gray);
    font-size: 13px;
    margin: 6px 0;
}

.address-card button {
    border: none;
    background: none;
    color: var(--teal);
    margin-top: 10px;
}

.checkout-product {
    display: flex;
    align-items: center;
    gap: 15px;
    padding: 15px 0;
    border-bottom: 1px solid var(--border);
}

.delivery-option {
    display: flex;
    align-items: center;
    gap: 15px;
    padding: 18px;
    border: 1px solid var(--border);
    border-radius: 10px;
    margin: 12px 0;
}

.delivery-option div {
    flex: 1;
}

.delivery-option p {
    color: var(--gray);
    font-size: 13px;
    margin-top: 5px;
}


/* PAYMENT */

.secure-payment {
    color: #14945e;
    font-weight: 700;
}

.payment-option {
    background: white;
    padding: 20px;
    border: 1px solid var(--border);
    margin-bottom: 10px;
    border-radius: 10px;
    display: flex;
    gap: 15px;
    align-items: center;
}

.payment-option strong {
    flex: 1;
}

.active-payment {
    border-color: var(--teal);
}

.card-form {
    background: white;
    padding: 25px;
    border-radius: 12px;
    margin-top: 20px;
    border: 1px solid var(--border);
}

.card-form label {
    display: block;
    margin: 15px 0 7px;
}

.card-form input {
    width: 100%;
    padding: 13px;
    border: 1px solid var(--border);
    border-radius: 7px;
}

.two-column {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 15px;
}


/* CONFIRMATION */

.confirmation-page {
    padding: 70px 8%;
    text-align: center;
}

.success-animation {
    width: 90px;
    height: 90px;
    background: var(--teal);
    color: white;
    border-radius: 50%;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 55px;
    animation: pop .5s ease;
}

@keyframes pop {
    0% {
        transform: scale(.3);
    }
    100% {
        transform: scale(1);
    }
}

.confirmation-page h1 {
    font-size: 40px;
    margin: 20px 0 10px;
}

.confirmation-page > p {
    color: var(--gray);
}

.confirmation-layout {
    max-width: 850px;
    margin: 40px auto;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
}

.confirmation-details {
    background: white;
    padding: 25px;
    text-align: left;
    border-radius: 14px;
}

.order-id {
    color: var(--teal);
    font-weight: 800;
    margin-bottom: 20px;
}

.confirm-row {
    display: flex;
    justify-content: space-between;
    padding: 13px 0;
    border-bottom: 1px solid var(--border);
}

.confirm-row span {
    color: var(--gray);
}

.delivery-art {
    background: var(--mint);
    border-radius: 14px;
    font-size: 130px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.confirmation-buttons {
    display: flex;
    justify-content: center;
    gap: 12px;
}


/* ORDERS */

.order-tabs {
    padding: 25px 7%;
    background: white;
    border-bottom: 1px solid var(--border);
}

.order-tabs button {
    border: none;
    background: none;
    padding: 12px 20px;
    color: var(--gray);
    font-weight: 700;
}

.order-tabs .active {
    color: var(--teal);
    border-bottom: 2px solid var(--teal);
}

.order-list {
    padding: 30px 7%;
}

.order-card {
    background: white;
    padding: 20px;
    margin-bottom: 15px;
    border-radius: 12px;
    border: 1px solid var(--border);
    display: grid;
    grid-template-columns: 2fr 1fr 1fr 1.3fr;
    gap: 20px;
    align-items: center;
}

.order-product {
    display: flex;
    align-items: center;
    gap: 15px;
}

.small-product-image {
    width: 75px;
    height: 75px;
    background: var(--mint);
    border-radius: 8px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 35px;
}

.order-product p,
.order-card p {
    color: var(--gray);
    font-size: 12px;
    margin-top: 5px;
}

.status {
    padding: 7px 10px;
    border-radius: 20px;
    font-size: 12px;
    font-weight: 700;
}

.shipped {
    background: #e6f3ff;
    color: #1673c8;
}

.delivered {
    background: #e5f8ee;
    color: #14945e;
}

.order-actions button {
    padding: 8px 10px;
    border: 1px solid var(--border);
    background: white;
    border-radius: 6px;
    margin: 2px;
    font-size: 11px;
}


/* DEALS */

.deal-hero {
    margin: 40px 7%;
    padding: 45px 60px;
    background: linear-gradient(110deg, var(--navy), #145c62);
    color: white;
    border-radius: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.deal-hero h1 {
    font-size: 50px;
    margin: 12px 0;
}

.deal-hero p {
    color: #d5eeee;
}

.countdown {
    display: flex;
    gap: 10px;
    align-items: center;
    margin-top: 25px;
}

.countdown div {
    background: white;
    color: var(--navy);
    width: 70px;
    padding: 10px;
    border-radius: 8px;
}

.countdown strong,
.countdown small {
    display: block;
    text-align: center;
}

.countdown strong {
    font-size: 24px;
}

.deal-art {
    font-size: 160px;
}

.deal-categories {
    padding: 20px 7% 70px;
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
}

.deal-categories div {
    background: var(--mint);
    padding: 35px;
    border-radius: 15px;
}

.deal-categories span {
    font-size: 40px;
}


/* PROFILE */

.profile-header {
    padding: 50px 7%;
    background: var(--navy);
    color: white;
    display: flex;
    gap: 25px;
    align-items: center;
}

.profile-avatar {
    width: 100px;
    height: 100px;
    background: white;
    color: var(--navy);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 45px;
}

.dashboard-grid {
    padding: 35px 7%;
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
}

.dashboard-grid div {
    background: white;
    padding: 25px;
    border-radius: 12px;
    border: 1px solid var(--border);
}

.dashboard-grid span {
    font-size: 25px;
}

.dashboard-grid strong {
    display: block;
    font-size: 28px;
    margin: 10px 0;
}

.dashboard-grid p {
    color: var(--gray);
}

.profile-layout {
    padding: 0 7% 60px;
    display: grid;
    grid-template-columns: 230px 1fr;
    gap: 30px;
}

.profile-menu {
    background: white;
    border-radius: 12px;
    padding: 10px;
    height: fit-content;
}

.profile-menu button {
    display: block;
    width: 100%;
    padding: 13px;
    border: none;
    background: white;
    text-align: left;
    border-radius: 7px;
}

.profile-menu button:hover {
    background: var(--mint);
    color: var(--teal);
}

.profile-card {
    background: white;
    padding: 25px;
    border-radius: 12px;
    margin-top: 20px;
}

.reward-progress {
    height: 10px;
    background: #edf1f1;
    border-radius: 10px;
    margin: 20px 0;
}

.reward-progress span {
    display: block;
    width: 70%;
    height: 100%;
    background: var(--teal);
    border-radius: 10px;
}


/* TRACKING */

.tracking-card {
    margin: 45px 7%;
    background: white;
    padding: 35px;
    border-radius: 15px;
}

.tracking-header {
    display: flex;
    justify-content: space-between;
}

.timeline {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    margin: 60px 0;
    position: relative;
}

.timeline:before {
    content: "";
    height: 3px;
    background: #dce8e6;
    position: absolute;
    top: 20px;
    left: 5%;
    right: 5%;
}

.timeline-step {
    text-align: center;
    position: relative;
}

.timeline-step span {
    width: 40px;
    height: 40px;
    background: #e7eeee;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: auto;
    position: relative;
    z-index: 2;
}

.completed-step span,
.current-step span {
    background: var(--teal);
    color: white;
}

.timeline-step strong,
.timeline-step small {
    display: block;
    margin-top: 10px;
}

.timeline-step small {
    color: var(--gray);
}

.tracking-info {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
}

.tracking-info div {
    background: var(--mint);
    padding: 20px;
    border-radius: 10px;
}

.map {
    margin-top: 25px;
    height: 180px;
    background: #edf5f4;
    border-radius: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.map-route {
    font-size: 25px;
}


/* NOTIFICATIONS */

.notification-list {
    padding: 40px 7%;
}

.notification {
    background: white;
    padding: 20px;
    display: flex;
    gap: 20px;
    border-bottom: 1px solid var(--border);
}

.notification > span {
    font-size: 30px;
}

.notification h3 {
    margin-bottom: 5px;
}

.notification p,
.notification small {
    color: var(--gray);
}

.unread {
    border-left: 4px solid var(--teal);
    background: #f2fbf9;
}


/* HELP */

.help-grid {
    padding: 50px 7%;
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
}

.help-grid div {
    background: white;
    padding: 30px;
    border-radius: 14px;
    border: 1px solid var(--border);
}

.help-grid span {
    font-size: 40px;
}

.help-grid h2 {
    margin: 15px 0 8px;
}

.help-grid p {
    color: var(--gray);
    font-size: 13px;
    margin-bottom: 20px;
}

.help-grid button {
    border: none;
    background: var(--teal);
    color: white;
    padding: 10px 15px;
    border-radius: 7px;
}


/* AUTH */

.auth-container {
    min-height: 650px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: var(--mint);
}

.auth-box {
    width: 420px;
    background: white;
    padding: 40px;
    border-radius: 18px;
    box-shadow: 0 20px 50px rgba(16,42,67,.12);
}

.auth-logo {
    color: var(--teal);
    font-size: 23px;
    font-weight: 800;
    margin-bottom: 25px;
}

.auth-box h1 {
    margin-bottom: 8px;
}

.auth-box > p {
    color: var(--gray);
    margin-bottom: 25px;
}

.auth-box label {
    display: block;
    margin: 15px 0 7px;
    font-size: 13px;
    font-weight: 600;
}

.auth-box input {
    width: 100%;
    padding: 13px;
    border: 1px solid var(--border);
    border-radius: 7px;
}

.auth-options {
    display: flex;
    justify-content: space-between;
    font-size: 12px;
    margin: 15px 0;
}

.auth-options label {
    margin: 0;
}

.auth-options input {
    width: auto;
}

.auth-options a,
.auth-bottom a {
    color: var(--teal);
    cursor: pointer;
}

.auth-bottom {
    text-align: center;
    margin-top: 20px;
}


/* FOOTER */

footer {
    background: var(--navy);
    color: white;
    padding: 55px 7% 20px;
}

.footer-grid {
    display: grid;
    grid-template-columns: 2fr 1fr 1fr 1.5fr;
    gap: 50px;
}

.footer-logo {
    color: white;
}

footer p {
    color: #b7c4d0;
    margin-top: 10px;
    font-size: 13px;
}

footer h3 {
    margin-bottom: 15px;
}

footer a {
    display: block;
    color: #b7c4d0;
    margin: 12px 0;
    cursor: pointer;
    font-size: 13px;
}

footer a:hover {
    color: white;
}

.footer-bottom {
    border-top: 1px solid #29425a;
    margin-top: 40px;
    padding-top: 20px;
    text-align: center;
    color: #91a1af;
    font-size: 12px;
}


/* RESPONSIVE */

@media(max-width: 1200px) {

    nav {
        gap: 12px;
    }

    .category-grid {
        grid-template-columns: repeat(3, 1fr);
    }

    .product-grid {
        grid-template-columns: repeat(3, 1fr);
    }

    .navbar {
        gap: 15px;
    }

}

@media(max-width: 900px) {

    .navbar {
        height: auto;
        padding: 15px;
        flex-wrap: wrap;
    }

    nav {
        order: 3;
        width: 100%;
        overflow-x: auto;
    }

    .hero {
        flex-direction: column;
    }

    .hero-content,
    .hero-art {
        width: 100%;
    }

    .hero h1 {
        font-size: 40px;
    }

    .product-grid {
        grid-template-columns: repeat(2, 1fr);
    }

    .shop-layout,
    .cart-layout,
    .checkout-layout,
    .payment-layout,
    .product-detail {
        grid-template-columns: 1fr;
    }

    .order-card {
        grid-template-columns: 1fr;
    }

    .dashboard-grid,
    .benefits,
    .help-grid,
    .deal-categories {
        grid-template-columns: repeat(2, 1fr);
    }

    .confirmation-layout {
        grid-template-columns: 1fr;
    }

}

@media(max-width: 600px) {

    .product-grid,
    .category-grid,
    .dashboard-grid,
    .benefits,
    .help-grid,
    .deal-categories {
        grid-template-columns: 1fr;
    }

    .hero h1 {
        font-size: 32px;
    }

    .address-grid,
    .info-cards {
        grid-template-columns: 1fr;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }

}
// ================= PRODUCTS =================

const products = [

    {
        id: 1,
        name: "Nova X Pro Smartphone",
        brand: "NovaTech",
        category: "Electronics",
        icon: "📱",
        price: 55999,
        oldPrice: 69999,
        discount: 20,
        rating: 4.8,
        reviews: 1240,
        stock: true
    },

    {
        id: 2,
        name: "NovaPods Wireless Earbuds",
        brand: "NovaAudio",
        category: "Electronics",
        icon: "🎧",
        price: 3499,
        oldPrice: 4999,
        discount: 30,
        rating: 4.7,
        reviews: 860,
        stock: true
    },

    {
        id: 3,
        name: "Premium Smart Watch",
        brand: "NovaFit",
        category: "Accessories",
        icon: "⌚",
        price: 6999,
        oldPrice: 9999,
        discount: 30,
        rating: 4.6,
        reviews: 530,
        stock: true
    },

    {
        id: 4,
        name: "Urban Classic Jacket",
        brand: "NovaWear",
        category: "Fashion",
        icon: "🧥",
        price: 2499,
        oldPrice: 3999,
        discount: 38,
        rating: 4.5,
        reviews: 420,
        stock: true
    },

    {
        id: 5,
        name: "AirFlex Running Shoes",
        brand: "NovaSport",
        category: "Sports",
        icon: "👟",
        price: 3299,
        oldPrice: 4999,
        discount: 34,
        rating: 4.7,
        reviews: 720,
        stock: true
    },

    {
        id: 6,
        name: "Luxury Skincare Kit",
        brand: "NovaBeauty",
        category: "Beauty",
        icon: "🧴",
        price: 1899,
        oldPrice: 2999,
        discount: 37,
        rating: 4.4,
        reviews: 310,
        stock: true
    },

    {
        id: 7,
        name: "Minimal Desk Lamp",
        brand: "NovaHome",
        category: "Home",
        icon: "💡",
        price: 1299,
        oldPrice: 1999,
        discount: 35,
        rating: 4.5,
        reviews: 210,
        stock: true
    },

    {
        id: 8,
        name: "Premium Leather Backpack",
        brand: "NovaStyle",
        category: "Accessories",
        icon: "🎒",
        price: 2199,
        oldPrice: 3499,
        discount: 37,
        rating: 4.6,
        reviews: 380,
        stock: true
    }

];


// ================= VARIABLES =================

let cart = JSON.parse(localStorage.getItem("novamartCart")) || [];

let wishlist =
    JSON.parse(localStorage.getItem("novamartWishlist")) || [];

let currentProduct = products[0];

let quantity = 1;

let filteredProducts = [...products];


// ================= PAGE NAVIGATION =================

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

    if (pageId === "cart") {
        renderCart();
    }

    if (pageId === "checkout") {
        renderCheckout();
    }

    if (pageId === "wishlist") {
        renderWishlist();
    }

    if (pageId === "orders") {
        updateCartCount();
    }

    if (pageId === "payment") {
        updatePaymentSummary();
    }

}


// ================= PRODUCT CARD =================

function productCard(product) {

    const liked =
        wishlist.some(item => item.id === product.id);

    return `

        <div class="product-card">

            <div class="product-image">

                <span class="discount-badge">
                    ${product.discount}% OFF
                </span>

                <button
                    class="wishlist"
                    onclick="toggleWishlist(${product.id})"
                >
                    ${liked ? "♥" : "♡"}
                </button>

                <span
                    onclick="openProduct(${product.id})"
                    style="cursor:pointer"
                >
                    ${product.icon}
                </span>

            </div>


            <div class="product-content">

                <span class="brand">
                    ${product.brand}
                </span>

                <h3>
                    ${product.name}
                </h3>

                <div class="rating">
                    ⭐⭐⭐⭐⭐
                    <span>
                        ${product.rating}
                        (${product.reviews})
                    </span>
                </div>

                <span class="old-price">
                    ₹${product.oldPrice.toLocaleString()}
                </span>

                <span class="current-price">
                    ₹${product.price.toLocaleString()}
                </span>

                <button
                    class="add-cart"
                    onclick="addToCartById(${product.id})"
                >
                    🛒 Add to Cart
                </button>

            </div>

        </div>

    `;
}


// ================= RENDER PRODUCTS =================

function renderProducts() {

    document.getElementById("homeProducts").innerHTML =
        products.slice(0, 4).map(productCard).join("");

    document.getElementById("shopProducts").innerHTML =
        filteredProducts.map(productCard).join("");

    document.getElementById("dealProducts").innerHTML =
        products.slice(0, 6).map(productCard).join("");

    document.getElementById("relatedProducts").innerHTML =
        products.slice(2, 6).map(productCard).join("");

    document.getElementById("productCount").textContent =
        `${filteredProducts.length} Products found`;
}


// ================= SEARCH =================

function searchProducts() {

    const keyword =
        document.getElementById("searchInput")
            .value
            .toLowerCase();

    filteredProducts = products.filter(product =>

        product.name.toLowerCase().includes(keyword) ||

        product.brand.toLowerCase().includes(keyword) ||

        product.category.toLowerCase().includes(keyword)

    );

    document.getElementById("shopProducts").innerHTML =
        filteredProducts.map(productCard).join("");

    document.getElementById("productCount").textContent =
        `${filteredProducts.length} Products found`;

    if (keyword.length > 0) {
        showPage("shop");
    }

}


// ================= CATEGORY FILTER =================

function filterCategory(category) {

    filteredProducts =
        products.filter(product =>
            product.category === category
        );

    renderProducts();

    showPage("shop");

}


// ================= PRICE FILTER =================

function filterPrice() {

    const value =
        Number(document.getElementById("priceRange").value);

    document.getElementById("priceValue").textContent =
        value.toLocaleString();

    filteredProducts =
        products.filter(product =>
            product.price <= value
        );

    document.getElementById("shopProducts").innerHTML =
        filteredProducts.map(productCard).join("");

}


// ================= SORT =================

function sortProducts() {

    const option =
        document.getElementById("sortSelect").value;

    if (option === "Price: Low to High") {

        filteredProducts.sort(
            (a, b) => a.price - b.price
        );

    }

    if (option === "Price: High to Low") {

        filteredProducts.sort(
            (a, b) => b.price - a.price
        );

    }

    if (option === "New Arrivals") {

        filteredProducts.reverse();

    }

    document.getElementById("shopProducts").innerHTML =
        filteredProducts.map(productCard).join("");

}


// ================= PRODUCT DETAILS =================

function openProduct(id) {

    const product =
        products.find(item => item.id === id);

    if (!product) return;

    currentProduct = product;

    quantity = 1;

    document.getElementById("detailName").textContent =
        product.name;

    document.getElementById("detailBrand").textContent =
        product.brand;

    document.getElementById("detailPrice").textContent =
        "₹" + product.price.toLocaleString();

    document.getElementById("detailOldPrice").textContent =
        "₹" + product.oldPrice.toLocaleString();

    document.getElementById("detailImage").textContent =
        product.icon;

    document.getElementById("quantity").textContent =
        quantity;

    showPage("productDetails");

}


// ================= QUANTITY =================

function changeQuantity(value) {

    quantity += value;

    if (quantity < 1) {
        quantity = 1;
    }

    if (quantity > 10) {
        quantity = 10;
    }

    document.getElementById("quantity").textContent =
        quantity;

}


// ================= CART =================

function addToCartById(id) {

    const product =
        products.find(item => item.id === id);

    addToCart(product);

}


function addToCart(product) {

    if (!product) return;

    const existing =
        cart.find(item => item.id === product.id);

    if (existing) {

        existing.quantity++;

    } else {

        cart.push({
            ...product,
            quantity: 1
        });

    }

    saveCart();

    updateCartCount();

    alert(
        product.name +
        " added to your cart!"
    );

}


function addCurrentProduct() {

    for (let i = 0; i < quantity; i++) {
        addToCart(currentProduct);
    }

    showPage("cart");

}


function buyNow() {

    cart = [];

    for (let i = 0; i < quantity; i++) {
        cart.push({
            ...currentProduct,
            quantity: 1
        });
    }

    saveCart();

    showPage("checkout");

}


// ================= CART RENDER =================

function renderCart() {

    const container =
        document.getElementById("cartItems");

    if (cart.length === 0) {

        container.innerHTML = `

            <div class="checkout-card">

                <h2>Your cart is empty</h2>

                <p>
                    Start shopping and add products
                    to your cart.
                </p>

                <br>

                <button
                    class="primary-btn"
                    onclick="showPage('shop')"
                >
                    Continue Shopping
                </button>

            </div>

        `;

        updateCartSummary();

        return;
    }


    container.innerHTML =
        cart.map(item => `

            <div class="cart-item">

                <div class="cart-item-image">
                    ${item.icon}
                </div>

                <div class="cart-item-info">

                    <span class="brand">
                        ${item.brand}
                    </span>

                    <h3>${item.name}</h3>

                    <p>
                        ₹${item.price.toLocaleString()}
                    </p>

                    <button
                        class="remove-btn"
                        onclick="removeFromCart(${item.id})"
                    >
                        Remove
                    </button>

                </div>


                <div class="cart-controls">

                    <button
                        onclick="changeCartQuantity(${item.id}, -1)"
                    >
                        −
                    </button>

                    <span>${item.quantity}</span>

                    <button
                        onclick="changeCartQuantity(${item.id}, 1)"
                    >
                        +
                    </button>

                </div>


                <strong>
                    ₹${(
                        item.price * item.quantity
                    ).toLocaleString()}
                </strong>

            </div>

        `).join("");

    updateCartSummary();

}


// ================= CART QUANTITY =================

function changeCartQuantity(id, amount) {

    const item =
        cart.find(product => product.id === id);

    if (!item) return;

    item.quantity += amount;

    if (item.quantity <= 0) {

        cart =
            cart.filter(product =>
                product.id !== id
            );

    }

    saveCart();

    renderCart();

}


// ================= REMOVE =================

function removeFromCart(id) {

    cart =
        cart.filter(product =>
            product.id !== id
        );

    saveCart();

    renderCart();

    updateCartCount();

}


// ================= SUMMARY =================

function getCartTotal() {

    return cart.reduce(
        (total, item) =>
            total + item.price * item.quantity,
        0
    );

}


function updateCartSummary() {

    const subtotal =
        getCartTotal();

    const discount =
        cart.reduce(
            (total, item) =>
                total +
                (
                    (item.oldPrice - item.price)
                    * item.quantity
                ),
            0
        );

    document.getElementById("subtotal").textContent =
        "₹" + subtotal.toLocaleString();

    document.getElementById("cartDiscount").textContent =
        "-₹" + discount.toLocaleString();

    document.getElementById("deliveryFee").textContent =
        subtotal >= 999 ? "FREE" : "₹99";

    document.getElementById("cartTotal").textContent =
        "₹" +
        (
            subtotal +
            (subtotal >= 999 ? 0 : 99)
        ).toLocaleString();

}


// ================= CART COUNT =================

function updateCartCount() {

    const count =
        cart.reduce(
            (total, item) =>
                total + item.quantity,
            0
        );

    document.getElementById("cartCount").textContent =
        count;

}


// ================= COUPON =================

function applyCoupon() {

    const coupon =
        document.getElementById("couponInput")
            .value
            .trim()
            .toUpperCase();

    if (coupon === "NOVA20") {

        alert(
            "Coupon applied! You received 20% discount."
        );

    } else {

        alert("Invalid coupon code.");

    }

}


// ================= CHECKOUT =================

function renderCheckout() {

    const container =
        document.getElementById("checkoutItems");

    container.innerHTML =
        cart.map(item => `

            <div class="checkout-product">

                <div class="small-product-image">
                    ${item.icon}
                </div>

                <div style="flex:1">

                    <strong>
                        ${item.name}
                    </strong>

                    <p>
                        Quantity: ${item.quantity}
                    </p>

                </div>

                <strong>
                    ₹${(
                        item.price *
                        item.quantity
                    ).toLocaleString()}
                </strong>

            </div>

        `).join("");


    const total =
        getCartTotal();

    document.getElementById("checkoutTotal").textContent =
        "₹" + total.toLocaleString();

    document.getElementById("checkoutFinal").textContent =
        "₹" + total.toLocaleString();

}


// ================= PAYMENT =================

function updatePaymentSummary() {

    const total =
        getCartTotal();

    document.getElementById("paymentTotal").textContent =
        "₹" + total.toLocaleString();

    document.getElementById("paymentFinal").textContent =
        "₹" + total.toLocaleString();

}


function makePayment() {

    if (cart.length === 0) {

        alert("Your cart is empty.");

        showPage("shop");

        return;
    }

    const total =
        getCartTotal();

    document.getElementById("confirmationTotal").textContent =
        "₹" + total.toLocaleString();

    showPage("confirmation");

}


// ================= WISHLIST =================

function toggleWishlist(id) {

    const product =
        products.find(item => item.id === id);

    const exists =
        wishlist.some(item => item.id === id);

    if (exists) {

        wishlist =
            wishlist.filter(item =>
                item.id !== id
            );

    } else {

        wishlist.push(product);

    }

    localStorage.setItem(
        "novamartWishlist",
        JSON.stringify(wishlist)
    );

    renderProducts();

    renderWishlist();

}


function addToWishlist(product) {

    if (!wishlist.some(item => item.id === product.id)) {

        wishlist.push(product);

        localStorage.setItem(
            "novamartWishlist",
            JSON.stringify(wishlist)
        );

        alert(
            "Added to Wishlist!"
        );

    }

}


function renderWishlist() {

    const container =
        document.getElementById("wishlistProducts");

    if (wishlist.length === 0) {

        container.innerHTML = `

            <div class="checkout-card">

                <h2>Your Wishlist is Empty</h2>

                <p>
                    Save products you love here.
                </p>

            </div>

        `;

        return;
    }

    container.innerHTML =
        wishlist.map(productCard).join("");

}


// ================= PRODUCT TABS =================

function showTab(tabId) {

    document.querySelectorAll(".tab-content")
        .forEach(tab =>
            tab.classList.remove("active-tab")
        );

    document.getElementById(tabId)
        .classList.add("active-tab");

}


// ================= ADDRESS =================

function addAddress() {

    alert(
        "Add New Address form opened."
    );

}


// ================= LOGIN =================

function loginUser() {

    const email =
        document.getElementById("loginEmail").value;

    const password =
        document.getElementById("loginPassword").value;

    if (!email || !password) {

        alert(
            "Please enter email and password."
        );

        return;
    }

    alert(
        "Login successful!"
    );

    showPage("home");

}


// ================= SIGNUP =================

function signupUser() {

    const name =
        document.getElementById("signupName").value;

    const email =
        document.getElementById("signupEmail").value;

    const password =
        document.getElementById("signupPassword").value;

    if (!name || !email || !password) {

        alert(
            "Please fill all required fields."
        );

        return;
    }

    alert(
        "Account created successfully!"
    );

    showPage("login");

}


// ================= SAVE CART =================

function saveCart() {

    localStorage.setItem(
        "novamartCart",
        JSON.stringify(cart)
    );

}


// ================= INITIALIZATION =================

document.addEventListener(
    "DOMContentLoaded",
    function () {

        renderProducts();

        renderWishlist();

        updateCartCount();

    }
);
### Result 
Thus, the NovaMart E-Commerce Web Application prototype was successfully designed and developed with a professional and interactive user interface.
