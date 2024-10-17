<%-- 
    Document   : home
    Created on : May 5, 2023, 7:19:37?PM
    Author     : binhdev
--%>
<%@include file="./inc/header.jsp"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div id="wishlist-container">  
    <!-- PAGE HEADING -->
    <div class="page-heading">
        <div class="container">
            <div class="row">
                <h1 class="page-title"><i class="page-icon fa-regular fa-heart"></i> Wishlist Cart</h1>
            </div>
        </div>
    </div>
    <!-- sidebar -->
    <div class="sidebar-possition-without">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="xstore-wishlist-form">
                        <table class="xstore-wishlist-table">
                            <thead>
                                <tr>
                                    <th class="xstore-wishlist-checkbox">
                                        <input type="checkbox" name="product-bulk-select"
                                               id="wishlist-products-select">
                                    </th>
                                    <th class="xstore-wishlist-product">Product </th>
                                    <th class="xstore-wishlist-quality">Quanlity </th>
                                    <th class="xstore-wishlist-price">Unit Price </th>
                                    <th class="xstore-wishlist-stock_status">Amount Of Money </th>
                                    <th class="xstore-wishlist-action">Action </th>
                                </tr>
                            </thead>
                            <tbody class="xstore-wishlist-items">
                                <c:forEach items="${cart}" var="orderItem">
                                    <tr>
                                        <td class="xstore-wishlist-checkbox">
                                            <input type="checkbox" name="product-4069">
                                        </td>
                                        <td class="xstore-wishlist-product">
                                            <a href="" class="xstore-wishlist-product-link">
                                                <img src="${orderItem.product.thumbnail}" alt="loi"
                                                     class="xstore-wishlist-product-img">
                                            </a>
                                            <div class="xstore-wishlist-details">
                                                <a href="" class="xstore-wishlist-details-link">${orderItem.product.name} </a>
                                            </div>
                                        </td>
                                        <td class="xstore-wishlist-quality">
                                            <form action="CartServlet" method="post"  class="product-content-right-quality">
                                                <input type="hidden" name="action" value="update"/>
                                                <input type="hidden" name="productId" value="${orderItem.productId}"/>
                                                <input onchange="this.form.submit()" name="quantity" type="number" value="${orderItem.quantity}" min="1" class="quality-number quality-number-1"/>
                                            </form>
                                        </td>
                                        <td class="xstore-wishlist-price"><span
                                                class="product-price-1">
                                                <fmt:setLocale value = "en_US"/>
                                                <fmt:formatNumber type="currency" value = "${orderItem.product.price}" /> </span>
                                        </td>
                                        <td class="xstore-wishlist-stock_status">
                                            <p class="stock_status-step">
                                                <fmt:setLocale value = "en_US"/>
                                                <fmt:formatNumber type="currency" value = "${orderItem.product.price * orderItem.quantity}" /></p>
                                        </td>
                                        <td class="xstore-wishlist-action">
                                            <div class="action-wraper">
                                                <form action="CartServlet" method="post" class="action-wraper-list">
                                                    <input type="hidden" name="action" value="delete"/>
                                                    <input type="hidden" name="productId" value="${orderItem.productId}"/>
                                                    <button class="btn-cart" type="submit" value=""><i class="fa-solid fa-trash"></i></button>
                                                </form>
                                            </div>
                                            <span class="date-add">Added on: April 27, 2023 </span>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <div class="form-action">
                            <div class="form-action-container">
                                <div class="form-action-left">
                                    <select class="form-action-select">
                                        <option value="add">Add to cart</option>
                                        <option value="Remove">Remove</option>
                                    </select>
                                    <div class="btn-select">Apply</div>
                                </div>
                                <div class="form-action-right">
                                    <div class="form-action-right-ask">
                                        <span class="right-ask-content"> Total:</span>
                                        <span class="right-ask-content">
                                            <fmt:setLocale value = "en_US"/>
                                            <fmt:formatNumber type="currency" value = "${total}" />
                                        </span>
                                    </div>
                                    <div class="form-action-right-btn"><a href="CheckoutServlet" class="form-action-right-link">Checkout All</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<%@include file="./inc/footer.jsp"%>