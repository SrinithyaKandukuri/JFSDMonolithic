<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Categories</title>
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>

    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
        
    <!-- CSS -->
    <link rel="stylesheet" href="css/categories.css">
    <script>
        document.addEventListener('DOMContentLoaded', function() {
          // Get all elements with class 'div1'
          var cardElements = document.getElementsByClassName('div1');
  
          // Add click event listener to each card
          Array.from(cardElements).forEach(function(card, index) {
            card.addEventListener('click', function() {
              // Define the URLs for each card
              var urls = ["action","action", "action", "action", "action", "action", "action", "action"];
  
              // Redirect to the corresponding URL
              window.location.href = urls[index];
            });
          });
        });
      </script>



</head>
<body>
  <div class="nav" style="background-color:teal";width: 100%;height:8cqb">
  <%@ include file="customernav.jsp"%>
	<br>
  </div>
  <div class="body">
    <table id="table">
        <tr>
          <td colspan="2">
            <div class="header">Categories</div>
            <hr class="style2" style="color:black;width: 300px;">
          </td>
        </tr>
        <tr>
          <td>
            <form action="oncl">
              <div class="div1" >
              <img alt="" src="images/action.jpeg">
                <br /><br />
              </div>
            </form>
          </td>
          <td>
          <div class="div1" >
              <img alt="" src="images/comedy.png">
                <br /><br />
              </div>
          </td>
          <td>
            <div class="div1">
            <img alt="" src="images/fiction.jpeg">
              <br /><br />
            </div>
          </td>
          <td>
            <div class="div1" >
            <img alt="" src="images/novel.jpeg">
              <br /><br />
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <div class="div1" >
            <img alt="" src="images/science.jpeg">
              <br /><br />
            </div>
          </td>
          <td>
            <div class="div1" >
            <img alt="" src="images/telugu.png">
              <br /><br />
            </div>
          </td>
          <td>
            <div class="div1" >
            <img alt="" src="images/hindi.jpeg">
              <br /><br />
            </div>
          </td>
          <td>
            <div class="div1" >
            <img alt="" src="images/english.jpeg">
              <br /><br />
            </div>
          </td>
        </tr>
        <tr>
          <td colspan="4">&nbsp;</td>
        </tr>
      </table>
  <!-- Add your content above the <hr> tag -->
  <hr class="solid"> 
  <br>

  <h1 style="color: teal; text-align: center;">Our Best Sellers</h1>

  <section class="swiper-section">
    
    <div class="swiper mySwiper container">
      <div class="swiper-wrapper content">

        <!-- ... (your card slider content) ... -->
        <div class="swiper-slide card">
            <div class="card-content">
              <div class="image">
                <img src="images/Adv1.jpg" alt="">
              </div>
  
  
           
  
              <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
                <i class="far fa-star"></i>
              </div>
  
              <div class="button" style="align-items: center;">
                <button class="hireMe">Buy Now</button>
              </div>
            </div>
          </div>
          <div class="swiper-slide card">
            <div class="card-content">
              <div class="image">
                <img src="images/Adv5.jpg" alt="">
              </div>
  
  
  
              <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
  
              <div class="button" style="align-items: center;">
                <button class="hireMe">Buy Now</button>
              </div>
            </div>
          </div>
          <div class="swiper-slide card">
            <div class="card-content">
              <div class="image">
                <img src="images/img_4.jpg" alt="">
              </div>

  
           
  
              <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
              </div>
  
              <div class="button" style="align-items: center;">
                <button class="hireMe">Buy Now</button>
              </div>
            </div>
          </div>
          <div class="swiper-slide card">
            <div class="card-content">
              <div class="image">
                <img src="images/r4.jpg" alt="">
              </div>
  
  
  
              <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
              </div>
  
              <div class="button" style="align-items: center;">
                <button class="hireMe">Buy Now</button>
              </div>
            </div>
          </div>
          <div class="swiper-slide card">
            <div class="card-content">
              <div class="image">
                <img src="images/img_8.jpg" alt="">
              </div>
  
  
  
              <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
              </div>
  
              <div class="button" style="align-items: center;">
                <button class="hireMe">Buy Now</button>
              </div>
            </div>
          </div>
          <div class="swiper-slide card">
            <div class="card-content">
              <div class="image">
                <img src="images/adv6.jpg" alt="">
              </div>
  
  
              <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
  
              <div class="button" style="align-items: center;">
                <button class="hireMe">Buy Now</button>
              </div>
            </div>
          </div>
          <div class="swiper-slide card">
            <div class="card-content">
              <div class="image">
                <img src="images/r6.jpg" alt="">
              </div>
  
  
              <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
                <i class="far fa-star"></i>
              </div>
  
              <div class="button" style="align-items: center;">
                <button class="hireMe">Buy Now</button>
              </div>
            </div>
          </div>
          <div class="swiper-slide card">
            <div class="card-content">
              <div class="image">
                <img src="images/img_4.jpg" alt="">
              </div>
  
  
              <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
              </div>
  
              <div class="button" style="align-items: center;">
                <button class="hireMe">Buy Now</button>
              </div>
            </div>
          </div>
          <div class="swiper-slide card">
            <div class="card-content">
              <div class="image">
                <img src="images/img_7.jpg" alt="">
              </div>
  
  
              <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
                <i class="far fa-star"></i>
              </div>
  
              <div class="button" style="align-items: center;">
                <button class="hireMe">Buy Now</button>
              </div>
            </div>
          </div>

      </div>
    </div>
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    <div class="swiper-pagination"></div>
  </section>
</div>

  <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

  <script src="js/script.js"></script>

</body>
</html>
