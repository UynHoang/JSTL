<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header id="header">
    <a href="index.html"><img src="assets/images/logo.png" class="logo" alt=""></a>
    <ul id="navbar">
        <li><a class="active" href="index.html">Home</a></li>
        <li><a href="ShopServlet">Shop</a>
            <ul class="sub-menu">
                <c:forEach items="${categoryList}" var="category">
                    <li class="menu-item">
                        <a href="CategoryServlet?categoryId=${category.id}">${category.name}</a>
                    </li>
                </c:forEach>
            </ul>
        </li>
        <li><a href="blog.html">Blog</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="contact.html">Contact</a></li>
        <li><a href="cart.html" class="fa-solid fa-bag-shopping"></a></li>
        <c:if test="${sessionScope.user == null}">
            <li><a href="LoginServlet">Login</a></li>
        </c:if>
        <c:if test="${sessionScope.user != null}">
            <li><a href="LogoutServlet">Logout</a></li>
        </c:if>
    </ul>
</header>