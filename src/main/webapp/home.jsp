<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Welcome Customer</title>
  <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="shortcut icon" href="images\favicon.jpg" type="image/x-icon">
  <style>
    .slider-container {
      width: 100%;
      height: 65%;
      overflow: hidden;
      position: relative;
    }

    .slider {
      display: flex;
      transition: transform 1s ease-in-out;
    }

    .slide {
      min-width: 100%;
    }

    .blink {
      animation: blinker 1.5s linear infinite;
      color: red;
      font-family: sans-serif;
    }

    @keyframes blinker {
      50% {
        opacity: 0;
      }
    }
  </style>
</head>
<body>
<%@ include file="navbar.jsp"%>
	<br>



  <div class="slider-container">
    <div class="slider">
      <div class="slide"><img src="https://www.bookswagon.com/bannerimages/80_inr.jpg?v=1.8" alt="Slide 1"></div>
      <div class="slide"><img src="https://www.bookswagon.com/bannerimages/84_inr.jpg?v=1.6" alt="Slide 2"></div>
      <div class="slide"><img src="https://www.bookswagon.com/bannerimages/86_inr.jpg?v=2.2" alt="Slide 3"></div>
    </div>
  </div>

  <script>
    const slider = document.querySelector('.slider');
    const slides = document.querySelectorAll('.slide');
    let currentSlide = 0;

    function nextSlide() {
      currentSlide = (currentSlide + 1) % slides.length;
      slider.style.transform = `translateX(-${currentSlide * 100}%)`;
    }

    setInterval(nextSlide, 5000); // Change slide every 6 seconds
  </script>
  <div class="row column text-center">
    <h2><marquee class="blink" direction="right" scrollamount="10">Bestsellers: Top Books Flying Off Our Shelves!</marquee></h2>
    <hr>
  </div>

  <div class="row small-up-2 large-up-4">
    <!-- First Card -->
    <div class="column">
      <img class="thumbnail" src="images/paramanandayya-sishyulu.jpg">
      <h5>Paramanandhayya shishyulu</h5>
      <center><p>₹400</p></center>
      <div class="container mt-3">
        <div class="text-center">
          <!-- Use a unique id for this modal -->
          <button type="button" class="button expanded" data-toggle="modal" data-target="#exampleModal1">
            Details
          </button>
        </div>
      </div>

      <!-- Use a unique id for this modal -->
      <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel1">Paramanandhayya shishyulu</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="container mt-5">
                <div class="row">
                  <div class="col-md-6">
                    <!-- Image on the left -->
                    <img class="img-fluid" src="images/paramanandayya-sishyulu.jpg" alt="Product Image">
                  </div>
                  <div class="col-md-6">
                    <!-- Text on the right -->
                    <h1 class="product-title">Paramanandhayya shishyulu</h1>
                    <p class="product-price">Price: ₹400</p>
                    <p class="product-description">Product description goes here. You can provide detailed information about the product in this section.</p>
                    <hr>
                    <button class="btn btn-warning">Add to Cart</button>
                    <hr>
                    <button class="btn btn-warning">View Sample</button>
                  </div>
                </div>
              </div>
            </div>
            <div class="modal-footer">
             <button type="button" class="btn btn-warning buy-now-button" data-dismiss="modal" id="button1">Buy Now</button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Second Card -->
    <div class="column">
      <img class="thumbnail" src="images/atomic_habits.jpg">
      <center>
        <h5>Atomic Habits</h5>
        <p>₹1,195</p>
      </center>
      <div class="container mt-3">
        <div class="text-center">
          <!-- Use a unique id for this modal -->
          <button type="button" class="button expanded" data-toggle="modal" data-target="#exampleModal2">
            Details
          </button>
        </div>
      </div>
      <!-- Use a unique id for this modal -->
      <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel2">Atomic Habits</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="container mt-5">
                <div class="row">
                  <div class="col-md-6">
                    <!-- Image on the left -->
                    <img class="img-fluid" src="images/atomic_habits.jpg" alt="Product Image">
                  </div>
                  <div class="col-md-6">
                    <!-- Text on the right -->
                    <h1 class="product-title">Atomic Habits</h1>
                    <p class="product-price">Price: ₹1,195</p>
                    <p class="product-description">Product description goes here. You can provide detailed information about the product in this section.</p>
                    <hr>
                    <button class="btn btn-warning">Add to Cart</button>
                    <hr>
                    <button class="btn btn-warning">View Sample</button>
                  </div>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-warning buy-now-button" data-dismiss="modal" id="button1">Buy Now</button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Third Card -->
    <div class="column">
      <img class="thumbnail" src="images/img_2.jpg">
      <center>
        <h5>Roger Paulin</h5>
        <p>₹1,200</p>
      </center>
      <div class="container mt-3">
        <div class="text-center">
          <!-- Use a unique id for this modal -->
          <button type="button" class="button expanded" data-toggle="modal" data-target="#exampleModal3">
            Details
          </button>
        </div>
      </div>

      <!-- <a href="#" class="button expanded">Buy</a> -->
      <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel3" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel3">Roger Paulin</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="container mt-5">
                <div class="row">
                  <div class="col-md-6">
                    <!-- Image on the left -->
                    <img class="img-fluid" src="images/img_2.jpg" alt="Product Image">
                  </div>
                  <div class="col-md-6">
                    <!-- Text on the right -->
                    <h1 class="product-title">Roger Paulin</h1>
                    <p class="product-price">Price: ₹1,300</p>
                    <p class="product-description">Product description goes here. You can provide detailed information about the product in this section.</p>
                    <hr>
                    <button class="btn btn-warning">Add to Cart</button>
                    <hr>
                    <button class="btn btn-warning">View Sample</button>
                  </div>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-warning buy-now-button" data-dismiss="modal" id="button1">Buy Now</button>
              
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Fourth Card -->
    <div class="column">
      <img class="thumbnail" src="images/img_3.jpeg">
      <center>
        <h5>Madeliene</h5>
        <p>₹1,300</p>
      </center>
      <div class="container mt-3">
        <div class="text-center">
          <!-- Use a unique id for this modal -->
          <button type="button" class="button expanded" data-toggle="modal" data-target="#exampleModal4">
            Details
          </button>
        </div>
      </div>
      <!-- <a href="#" class="button expanded">Buy</a> -->
      <div class="modal fade" id="exampleModal4" tabindex="-1" aria-labelledby="exampleModalLabel4" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel3">Madeliene</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="container mt-5">
                <div class="row">
                  <div class="col-md-6">
                    <!-- Image on the left -->
                    <img class="img-fluid" src="images/img_3.jpeg" alt="Product Image">
                  </div>
                  <div class="col-md-6">
                    <!-- Text on the right -->
                    <h1 class="product-title">Madeliene</h1>
                    <p class="product-price">Price: ₹1,300</p>
                    <p class="product-description">Product description goes here. You can provide detailed information about the product in this section.</p>
                    <hr>
                    <button class="btn btn-warning">Add to Cart</button>
                    <hr>
                    <button class="btn btn-warning">View Sample</button>
                  </div>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-warning buy-now-button" data-dismiss="modal" id="button1">Buy Now</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <hr>

  <!-- Rest of your HTML content... -->
  <div class="row column">
    <div class="callout primary">
      <h3>Really big special this week on Books.</h3>
    </div>
  </div>

  <hr>

  <div class="row column text-center">
    <h2>Some Other Best Books</h2>
    <hr>
  </div>

  <div class="row small-up-2 medium-up-3 large-up-6">
    <div class="column">
      <img class="thumbnail" src="images/img_4.jpg">
      <h5>Heart Of the Few</h5>
      <p>₹400</p>
      <a href="#" class="button small expanded hollow">Buy</a>
    </div>
    <div class="column">
      <img class="thumbnail" src="images/img_5.jpg">
      <h5>Our Darkest Night</h5>
      <p>₹450</p>
      <a href="#" class="button small expanded hollow">Buy</a>
    </div>
    <div class="column">
      <img class="thumbnail" src="images/img_6.jpg">
      <h5>Darkest Before The Dawn</h5>
      <p>₹300</p>
      <a href="#" class="button small expanded hollow">Buy</a>
    </div>
    <div class="column">
      <img class="thumbnail" src="images/img_7.jpg">
      <h5>All The Light We Cannot See</h5>
      <p>₹450</p>
      <a href="#" class="button small expanded hollow">Buy</a>
    </div>
    <div class="column">
      <img class="thumbnail" src="images/img_8.jpg">
     <h5>Solar Bones</h5>
      <p>₹470</p>
      <a href="#" class="button small expanded hollow">Buy</a>
    </div>
    <div class="column">
      <img class="thumbnail" src="images/img_9.jpg">
      <h5>The House On The Lake</h5>
      <p>₹495</p>
      <a href="#" class="button small expanded hollow">Buy</a>
    </div>
  </div>

  <hr>
  <!-- <div class="row">
    <div class="medium-4 columns">
      <h4>Top Products</h4>
      <div class="media-object">
        <div class="media-object-section">
          <img class="thumbnail" src="images/Adv1.jpg">
        </div>
        <div class="media-object-section">
          <h5>Nunc Eu Ullamcorper Orci</h5>
          <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
        </div>
      </div>
      <div class="media-object">
        <div class="media-object-section">
          <img class="thumbnail" src="images/Adv2.jpg">
        </div>
        <div class="media-object-section">
          <h5>Nunc Eu Ullamcorper Orci</h5>
          <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
        </div>
      </div>
      <div class="media-object">
        <div class="media-object-section">
          <img class="thumbnail" src="images/Adv3.jpg">
        </div>
        <div class="media-object-section">
          <h5>Nunc Eu Ullamcorper Orci</h5>
          <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
        </div>
      </div>
    </div>
    <div class="medium-4 columns">
      <h4>Top Products</h4>
      <div class="media-object">
        <div class="media-object-section">
          <img class="thumbnail" src="images/Adv4.jpg">
        </div>
        <div class="media-object-section">
          <h5>Nunc Eu Ullamcorper Orci</h5>
          <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
        </div>
      </div>
      <div class="media-object">
        <div class="media-object-section">
          <img class="thumbnail" src="images/Adv5.jpg">
        </div>
        <div class="media-object-section">
          <h5>Nunc Eu Ullamcorper Orci</h5>
          <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
        </div>
      </div>
      <div class="media-object">
        <div class="media-object-section">
          <img class="thumbnail" src="images/adv6.jpg">
        </div>
        <div class="media-object-section">
          <h5>Nunc Eu Ullamcorper Orci</h5>
          <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
        </div>
      </div>
    </div>
    <div class="medium-4 columns">
      <h4>Top Products</h4>
      <div class="media-object">
        <div class="media-object-section">
          <img class="thumbnail" src="images/adv7.jpg">
        </div>
        <div class="media-object-section">
          <h5>Nunc Eu Ullamcorper Orci</h5>
          <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
        </div>
      </div>
      <div class="media-object">
        <div class="media-object-section">
          <img class="thumbnail" src="images/adv8.jpg">
        </div>
        <div class="media-object-section">
          <h5>Nunc Eu Ullamcorper Orci</h5>
          <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
        </div>
      </div>
      <div class="media-object">
        <div class="media-object-section">
          <img class="thumbnail" src="images/c1.jpg">
        </div>
        <div class="media-object-section">
          <h5>Nunc Eu Ullamcorper Orci</h5>
          <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
        </div>
      </div>
    </div>
  </div> -->

 <div class="callout large secondary">
  <div class="row">
    <div class="large-4 columns">
      <h5>About Online Bookstore</h5>
      <p>Welcome to Online Bookstore, your trusted source for a vast collection of books in all genres. We are passionate about books and are committed to providing you with an exceptional reading experience.</p>
    </div>
    <div class="large-3 large-offset-2 columns">
      <h5>Quick Links</h5>
      <ul class="menu vertical">
        <li><a href="#">Home</a></li>
        <li><a href="#">Browse Books</a></li>
        <li><a href="#">My Account</a></li>
        <li><a href="#">Contact Us</a></li>
      </ul>
    </div>
    <div class="large-3 columns">
      <h5>Contact Information</h5>
      <ul class="menu vertical">
        <li><strong>Address:</strong> 123 Bookstore Street, City, Country</li>
        <li><strong>Email:</strong> info@onlinebookstore.com</li>
        <li><strong>Phone:</strong> +1 (123) 456-7890</li>
      </ul>
    </div>
  </div>
</div>


  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
  <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
  <script>
    $(document).foundation();
  </script>
  <script>
  // Get all the "Buy Now" buttons on the page.
  const buyNowButtons = document.querySelectorAll('.btn-warning');

  // Add an event listener to each button to open the "paymentdetails.html" page.
  buyNowButtons.forEach(button => {
    button.addEventListener('click', function() {
      // Redirect to the paymentdetails.html page when the button is clicked.
      window.location.href = "payment";
    });
  });
</script>

</body>
</html>
