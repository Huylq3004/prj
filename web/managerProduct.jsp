<%-- 
    Document   : ManageProduct
    Created on : Mar 11, 2023, 1:03:23 PM
    Author     : choip
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="icon" type="image/x-icon" href="images/favicon.jpg">
        <link href="css/product.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="container">
            <div class="table-wrap">
                <table class="table table-responsive table-borderless">
                    <thead>
                    <th><a href="home">HOME</a></th>
                    <th>&nbsp;</th>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Status</th>
                    <th>Category</th>
                    <th>&nbsp;</th>
                    </thead>
                    <tbody>
                        <c:forEach var="plant" items="${requestScope.plantsList}">
                        <form action="maincontroller" method="post"  enctype="multipart/form-data">
                            <tr class="align-middle alert border-bottom" role="alert">
                                <td>
                                    ${plant.id}
                                </td>
                                <td class="text-center">
                                    <img src="${plant.imgPath}" alt="alt" style="width: 50px;height: 50px"/>
                                    <br>
                                    <input type="file" name="file" size="60" accept="image/*" />
                                </td>
                                <td>
                                    <div>
                                        <p ><input type="text" name="name" value="${plant.name}" required="" /> </p>
                                        <p >

                                            <textarea style="    width: 254px" id="id" name="description" required="" rows="5" cols="10">${plant.description}</textarea> </p>
                                    </div>
                                </td>
                                <td>
                                    <div class="fw-600"><input type="number" name="price" value="${plant.price}" required="" min="0"/> </div>
                                </td>
                                <td class="d-">
                                    <select name="status">
                                        <option value="${plant.status}">${plant.status == 1 ? 'available' : 'out of stock'}</option>
                                        <option value="${plant.status == 1 ? '0' : '1'}">${plant.status == 0 ? 'available' : 'out of stock'}</option>
                                    </select>
                                </td>

                                <td>
                                    <select name="cateid" >
                                        <c:forEach var="cate" items="${requestScope.cateList}">
                                            <option ${cate.cateID == plant.cateid ? 'selected' :'' }  value="${cate.cateID}">${cate.cateName}</option>                                 
                                        </c:forEach>
                                    </select>
                                </td> 
                                <td>
                                    <div class="btn" data-bs-dismiss="alert">
                                        <input type="hidden" name="txtsearch" value="${param.txtsearch}" />
                                        <input type="hidden" name="searchby" value="${param.searchby}" />
                                        <input type="hidden" name="id" value="${plant.id}" />
                                        <input type="hidden" name="imgPath" value="${plant.imgPath}" />
                                        <input type="submit" value="updateProduct" name="action" />
                                    </div>
                                </td>
                            </tr>
                        </form>
                    </c:forEach>
                    <c:if test="${empty requestScope.plantsList}">
                        <p>don't have any product</p>
                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </body>
</html>