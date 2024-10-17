<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cara</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<!--    <header id="header">
        <a href="#"><img src="img/logo.png" class="logo" alt=""></a>
        <ul id="navbar">
            <li><a href="index.html">Home</a></li>
            <li><a class="active" href="shop.html">Shop</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="cart.html"><i class="fa-solid fa-bag-shopping"></i></a></li>
            <li><a href="user.html"><i class="fa-solid fa-user"></i></a></li>
        </ul>
    </header>-->
<%@include file="./inc/header.jsp" %>
    <section id="page-header">
        <h2>#stayhome</h2>
        <p>Save more with coupons & up to 70% off!</p>
    </section>

    <section id="product1" class="section-p1">
       <div class="prod-cont">
        <c:forEach items="${productList}" var="product">
          <div class="prod">
            <img src="${product.thumbnail}" alt="">
            <div class="des">
              <span>adidas</span>
              <h5>${product.name}</h5>
              <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
              <h4>${product.price}</h4>
            </div>
            <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
          </div>
        </c:forEach>
      </div>
    </section>

    
   <section id="pagination" class="section-pl">
  <c:forEach var="i" begin="1" end="${numberPage + 1}">
    <c:if test="${i == page}">
      <a class="active" href="ShopServlet?page=${i}">${i}</a>
    </c:if>
  </c:forEach>
  <a href="#" class="fa-solid fa-arrow-right"></a>
</section>

<%@include file="./inc/footer.jsp" %>

</body>

</html>
