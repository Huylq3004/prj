<%-- 
    Document   : home
    Created on : Mar 8, 2023, 8:52:00 PM
    Author     : huylq
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Phone Store</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="images/favicon.jpg">
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/main.css" rel="stylesheet" />

    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="home">Phone Store</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <h5><form action="home">
                            <input
                                type="text"
                                name="txtSearch"
                                data-id="makeshop-search-keyword"
                                value="${param.txtSearch}"
                                />  
                            <input type="submit" value="Search"  />
                        </form >
                    </h5>

                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="home">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="searchPhone.jsp">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Category</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

                                <li><a class="dropdown-item" href="home">All Products</a></li>
                                    <c:forEach items="${categoryList}" var="category">
                                    <li><hr class="dropdown-divider" /></li>
                                    <li><a class="dropdown-item" href="listtype?cid=${category.cateID}">${category.cateName}</a></li>
                                    </c:forEach>
                            </ul>
                        </li>

                    </ul>
                    <form class="d-flex">
                        <c:if test="${sessionScope.USER == null}">
                            <a href="login.jsp" ><button type="button" class="btn btn-outline-dark"> Login </button></a>
                            <a href="register.jsp" ><button type="button" class="btn btn-outline-dark"> Create Account </button></a>
                        </c:if>
                        <c:if test="${sessionScope.USER != null}">
                            <a href="logoutservlet" ><button type="button" class="btn btn-outline-dark"> Logout </button></a>
                             <a href="changepass.jsp" ><button type="button" class="btn btn-outline-dark"> Change Password </button></a>
                            <a href="profile.jsp" ><button type="button" class="btn btn-outline-dark"> Profile </button></a>
                        </c:if>
                        <c:if test="${sessionScope.USER.role == 1}">
                            <a href="createProduct.jsp" ><button type="button" class="btn btn-outline-dark"> Add product</button></a>
                            <a href="manageproductsservlet" ><button type="button" class="btn btn-outline-dark"> Uppdate product</button></a>
                        </c:if>
                    </form>

                    <form class="d-flex">
                        <a href="cart.jsp" > <button class="btn btn-outline-dark" type="submit">
                                <i class="bi-cart-fill me-1"></i>
                                Cart
                        </a>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark ">
            <div class="text-center text-white">
                <h1 class="textbanner">Welcome Phone Store</h1>
                <img class="banner" src="images/banner1.jpg"/>
            </div>

        </header>
        <!-- Section-->

        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5" >
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <c:forEach items="${PList}" var="p">
                        <div class="col mb-5">
                            <div class="card h-100">

                                <!-- Product image-->
                                <img class="card-img-top" src="${p.imgPath}" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">${p.name}</h5>
                                        <!-- Product reviews-->
                                        <div class="d-flex justify-content-center small text-warning mb-2">
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                            <div class="bi-star-fill"></div>
                                        </div>
                                        <!-- Product price-->
                                        <span style="font-weight: 700">${p.price}$</span>

                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <a href="findone?id=${p.id}"><button type="button" class="btn btn_detail "><i class="fa fa-info-circle"></i>
                                                Details</button> </a>
                                        <a href="addtocartservlet?pid=${p.id}"> <button type="button" class="btn btn_order "><i class="fa fa-shopping-cart"></i> Buy
                                                Now</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                    <nav aria-label="...">
                        <ul class="pagination">
                            <li class="page-item ${page == 1 ? 'disabled':''}">
                                <a class="page-link" href="home?page=${page-1}">Previous</a>
                            </li>
                            <c:forEach begin="1" end="${requestScope.totalPage}" var="p" >
                                <c:choose>
                                    <c:when test="${p == requestScope.page}">
                                        <li class="page-item active">
                                            <span class="page-link">
                                                ${p}
                                            </span>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item"><a class="page-link" href="home?page=${p}">${p}</a></li>    
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            <li class="page-item ${page == totalPage ? 'disabled':''}">
                                <a class="page-link" href="home?page=${page+1}">Next</a>
                            </li>
                        </ul>
                    </nav>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>

