<%-- 
    Document   : search
    Created on : Sep 29, 2024, 3:10:00 PM
    Author     : Thu Uyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="./inc/header.jsp"%>

<div id=app__container"">
    <div class="top-arrival container">
        <!-- top new arrivals -->
        <div class="row">
            <h1 class="heading-title">Product List</h1>
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
                <div class="col-md-3 col-sm-6 col-sx-12">
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
                        <form class="product-footer" action="CartServlet" method="post">
                            <input type="hidden" name="action" value="create"/>
                            <input type="hidden" name="quantity" value="1"  min="1" />
                            <input type="hidden" name="productId" value="${product.id}"/>
                            <input type="hidden" name="productPrice" value="${product.price}"/>
                            <span class="product-short-desc">${product.description}</span>
                            <h1 class="product-title">${product.name}</h1>
                            <div class="product-price">
                                <span class="product-price-1">
                                    <fmt:setLocale value = "en_US"/>
                                    <fmt:formatNumber type="currency" value = "${product.price}" /> 
                                </span>
                            </div>
                            <button type="submit" class="_btn _btn-product">Add to cart</button>
                        </form>

                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<%@include file="./inc/footer.jsp"%>