<%-- 
    Document   : home
    Created on : May 5, 2023, 7:19:37?PM
    Author     : uyendev
--%>


<%@include file="./inc/header.jsp"%>

<div id=app__container"">
    <div class="top-arrival container">
        <!-- top new arrivals -->
        <div class="row">
            <h1 class="heading-title">Top New Arrivals</h1>
        </div>
        <!-- heading product -->
        <div class="heading-bar">
            <span class="heading-desc">
                Browse the collection of our best selling and top interesting products.
            </span>
            <ul class="heading-list">
                <li class="heading-item">
                    <span class="heading-text heading-text-color"> New arrivals</span>
                </li>
                <li class="heading-item">
                    <span class="heading-text"> Featured </span>
                </li>
            </ul>
        </div>
        <!-- top new product -->
        <div class="row">
            <c:forEach items="${productList}" var="product">
                <div class="col-md-3">
                    <div class="product-item">
                        <div class="product-image-wrap">
                            <a href="ProductDetailServlet?productId=${product.id}" class="product-image-wrap-link">
                                <img src="${product.thumbnail}" alt="" class="product-image">
                            </a>
                            <ul class="product-icon">
                                <li> <a href="ProductDetailServlet?productId=${product.id}"><i class="fa-regular fa-eye"></i></a></li>
                                <li> <a href="CartServlet"><i class="fa-solid fa-cart-shopping"></i></a></li>
                                <li> <a href=""><i class="fa-solid fa-arrows-rotate"></i></a></li>
                                <li> <a href=""><i class="fa-regular fa-heart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product-footer">
                            <span class="product-short-desc">
                                ${product.description}
                            </span>
                            <h1 class="product-title">${product.name}</h1>
                            <div class="product-price">
                                <span class="product-price-1 ">$${product.price} </span>
                            </div>



                            <div class="_btn _btn-product">Add to cart</div>
                        </div>

                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<%@include file="./inc/footer.jsp"%>