<%-- 
    Document   : detail
    Created on : Feb 28, 2023, 10:37:40 AM
    Author     : choip
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1" />
        <title>Phone Store</title>
        <link rel="icon" type="image/x-icon" href="/images/favicon.jpg">
        <link rel="stylesheet" href="./css/main.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <!-- FONT AWESOME -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
              integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
              crossorigin="anonymous" />
    </head>
    <body>
        <header>
          <h1>Products</h1>
        </header>
        <form action="addtocartservlet">
            <section class="store">
                <div class="container_sm">
                    <div class="row row-cols-1 row-cols-sm-2">
                        <div class="col">
                            <div class="card-body image-detail">
                                <img src="${requestScope.PRODUCT.imgPath}">
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-body">
                                <h3><strong>Name: </strong>${requestScope.PRODUCT.name}</h3>
                                <p class="card-text"><strong>Description: </strong>${requestScope.PRODUCT.description}</p>
                                <div class="code">
                                    <strong>Items ID: </strong>
                                    <span style="background-color: #F0AD4E;border: 2px solid #dd9837;color: white; border-radius:
                                          4px;"> ${requestScope.PRODUCT.id} </span>
                                </div>
                                <div class="category">
                                    <strong>Category : </strong>
                                    <small style="color:#428BCA">${requestScope.PRODUCT.catename}</small>
                                </div>
                                <p><strong>Price: </strong><fmt:formatNumber type="number" pattern="#,###" value="${requestScope.PRODUCT.price}"/> USD</p>
                                <div class="">
                                    <a href="home"><button type="button" class="btn btn_back "><i class="fa fa-arrow-alt-circle-left"></i> Back</button></a>
                                    <input type="hidden" name="pid" value="${requestScope.PRODUCT.id}" />
                                    <button type="submit" class="btn btn_order "><i class="fa fa-shopping-cart"></i> Buy Now</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
    </div>
</body>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"
        integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"
        integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous">
</script>
</html>
