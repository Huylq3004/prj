<%-- 
    Document   : profile
    Created on : Feb 28, 2023, 2:53:13 PM
    Author     : choip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1" />
        <title>Phone Store</title>
        <link rel="icon" type="image/x-icon" href="images/favicon.jpg">
        <link rel="stylesheet" href="./css/main.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
              integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
              crossorigin="anonymous" />
    </head>
    <body>
        <header>
            <h1>Phone Store</h1>
             <div class="logout"><a href="home"> <button type="button" class="btn btn_back "><i class="fa fa-arrow-alt-circle-left"></i> Back</button></a></div>
       
        </header>
        <section class="login">
            <div class="card">
                <div class="card-header text-dark">
                    Please Sign up
                </div>
                <div class="card-body">
                    <form name="login_form" action="updateaccountservlet" method="post">
                         <p id="ErrorTextMsg" class="errortxt">${requestScope.MESSAGE}</p>
                        <div class="form-group">
                            <div class="mb-3">
                                <input type="email" name="txtemail" value="${sessionScope.USER.email}" readonly="" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                       placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="mb-3">
                                <strong>Name</strong><input type="text" name="txtfullname" value="${sessionScope.USER.fullname}" required="" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                       placeholder="Full name">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="mb-3">
                                <strong>Phone</strong><input type="number" name="txtphone" value="${sessionScope.USER.phone}" required="" min="0" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                       placeholder="Phone number">
                            </div>
                        </div>
<!--                        <div class="form-group">
                            <div class="mb-3">
                                <strong>Password</strong><input type="password" name="txtpassword" value="${sessionScope.USER.password}" required="" class="form-control" id="exampleInputPassword1"
                                       placeholder="Password">
                            </div>
                        </div>-->
                        <button style="width: 100%; background-color:#5CB85C" type="submit"
                                class="btn btn-success">Change</button>
                    </form>
                </div>
            </div>
        </div>
    </section>


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
