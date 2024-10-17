<%-- 
    Document   : home
    Created on : May 5, 2023, 7:19:37?PM
    Author     : uyendev
--%>
<%@include file="./inc/header.jsp"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div id="app__container ">
    <div class="container">
        <div class="product-content">
            <div class="row">
                <div class="col-md-6">
                    <div class="product-content-top">
                        <img src="${product.thumbnail}" alt="" class="product-content-top-img">
                        <div class="product-content-top-value">
                            <a href="" class="product-content-top-link"><i
                                    class=" product-content-top-icon fa-regular fa-heart"></i></a>
                            <div class="product-mes-item">
                                <a href="" class="product-mes-link"><span class="product-mes">Add
                                        towishlist</span></a>
                            </div>

                        </div>

                    </div>
                    <div class="row">
                        <c:forEach items="${product.galleries}" var="image">
                            <div class="col-md-3">
                                <div class="product-content-bottom">
                                    <img src="${image.url}" alt=""
                                         class="product-content-bottom-img-saferi">
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="product-content-right">
                        <h1 class="product-content-right-heading">${product.name}</h1>
                        <span class="product-content-right-price">$${product.price}</span>
                        <div class="product-content-right-evaluate">
                            <div class="product-content-right-start">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <a href="#" class="product-content-right-cmt"> (1 customer review)</a>
                        </div>
                        <span class="product-content-right-content">${product.description}</span>
                        <form class="product-content-right-form" action="CartServlet" method="post">
                            <input type="hidden" name="action" value="create"/>
                            <input type="hidden" name="productId" value="${product.id}"/>
                            <input type="hidden" name="productPrice" value="${product.price}"/>
                            <div class="product-content-right-quality">
                                <input name="quantity" value="1" type="number" min="1" class="quality-number"/>
                            </div>
                            <button class="_btn _btn-quality" type="submit"><i class="fa-sharp fa-solid fa-cart-shopping"></i>
                                add to cart 
                            </button>
                        </form>
                        <a href="#" class="product-content-right-reload"><i
                                class="product-content-right-icon fa-solid fa-arrows-rotate"></i>Add
                            to compare</a>
                        <span class="product-content-right-category">Category: <a href="CategoryServlet?categoryId=${product.category.id}"
                                                                                  class="content-right-category-link">${product.category.name}</a></span>
                        <div class="product-content-right-tag">Tags:
                            <a href="" class="product-content-right-link">accessories</a>,
                            <a href="" class="product-content-right-link">best trend</a>,
                            <a href="" class="product-content-right-link">fashion</a>,
                            <a href="" class="product-content-right-link">new</a>
                        </div>
                        <div class="product-content-right-share">Share:
                            <a href="" class="content-right-share-link">
                                <i class="fa-brands fa-twitter"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-brands fa-facebook-f"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-brands fa-vk"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-brands fa-pinterest"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-solid fa-envelope"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-brands fa-invision"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-solid fa-phone-volume"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-brands fa-skype"></i>
                            </a>
                        </div>
                    </div>

                </div>

            </div>
            <!-- w3-tav -->
            <ul class="w3-tav-list">
                <li class="w3-tav-item"><a href="#" class="w3-tav-link">Description</a></li>
                <li class="w3-tav-item"><a href="#" class="w3-tav-link">Reviews (1)</a></li>
            </ul>
            <div class="w3-text-editor">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                labore et dolore magna aliqua.
                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat.
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                pariatur.
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim
                id est laborum.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                labore et dolore magna aliqua.
                Ut enim ad minim veniam, quis nostrud exercitation ullamco.
            </div>
            <div class="row mrt-48">
                <div class="col-md-6">
                    <div class="w3-editor-container">
                        <img src="${product.thumbnail}" alt="" class="w3-editor-img">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="w3-editor-widget">
                        <h4 class="w3-editor-widget-heading">Product Informations</h4>
                        <strong>Other Features:</strong> Bluetooth, Charging, With Mic, Stereo Bluetooth <br>
                        <strong>Form Factor:</strong>In Ear<br>
                        <strong>Connections:</strong> Bluetooth, Wireless <br>
                        <strong>Bluetooth: </strong> Compatiblity <br>
                        <strong>Drivers: </strong> 14 mm drivers <br>
                        <strong>Power Source : </strong> Battery Power <br>
                        <strong>Batteries: </strong> Rechargeable Lithium-Ion <br>
                        <strong>Battery life: </strong> Up to eight hours of playing time. <br>
                    </div>
                </div>
            </div>
            <div class="w3-text-editor  mrt-12">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                labore et dolore magna aliqua.
                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat.
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                pariatur.
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim
                id est laborum.
            </div>

            <!-- Related Products -->
            <div class="related-products mrt-48">
                <div class="row">
                    <h1 class="heading-title">Related products</h1>
                </div>
                <div class="row">
                    <c:forEach items="${relatedProductList}" var="product">
                        <div class="col-md-3">
                            <div class="product-item">
                                <div class="product-image-wrap">
                                    <a href="ProductDetailServlet?productId=${product.id}" class="product-image-wrap-link">
                                        <img src="${product.thumbnail}" alt="" class="product-image">
                                    </a>
                                    <ul class="product-icon">
                                        <li> <a href=""><i class="fa-regular fa-eye"></i></a></li>
                                        <li> <a href=""><i class="fa-solid fa-cart-shopping"></i></a></li>
                                        <li> <a href=""><i class="fa-solid fa-arrows-rotate"></i></a></li>
                                        <li> <a href=""><i class="fa-regular fa-heart"></i></a></li>
                                    </ul>
                                </div>
                                <form class="product-footer" action="CartServlet" method="post">
                                    <input type="hidden" name="action" value="create"/>
                                    <input type="hidden" name="quantity" value="1"  min="1" />
                                    <input type="hidden" name="productId" value="${product.id}"/>
                                    <input type="hidden" name="productPrice" value="${product.price}"/>
                                    <span class="product-short-desc">${product.name}</span>
                                    <h1 class="product-title">${product.description}</h1>
                                    <div class="product-price">
                                        <span class="product-price-1"> <fmt:setLocale value = "en_US"/>
                                            <fmt:formatNumber type="currency" value = "${product.price}"/>  </span>
                                    </div>
                                    <button type="submit" class="_btn _btn-product">Add to cart</button>
                                </form>

                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>


    </div>
</div>
<%@include file="./inc/footer.jsp"%>