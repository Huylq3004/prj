<%-- 
    Document   : changepass
    Created on : Mar 14, 2023, 10:04:20 PM
    Author     : huylq
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
        <div class="container">

            <div class="row">
                <div class="col-12">
                    <!-- Page title -->
                    <div class="my-5">
                        <h3>Change Password</h3>
<!--                        <a style="text-decoration: none ; color: darkgrey ; display: inline" href="home">Home</a> &nbsp;&nbsp;&nbsp;
                        <a style="text-decoration: none ; color: darkgrey ;display: inline" href="profile?uid=${sessionScope.account.id}">Profile</a>-->
                        <hr>
                    </div>
                    <!-- Form START -->
                    <form  action="changepassservlet" method="post">
                         <p style="color: red">${error}</p>
                        <!-- change password -->
                        <div class="col-xxl-6">
                            <div class="bg-secondary-soft px-4 py-5 rounded">
                                <div class="row g-3">
                                    <!-- Old password -->
                                    <div class="col-md-6">
                                        <label for="exampleInputPassword1" class="form-label">Old password *</label>
                                        <input type="password" name="oldpass" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <!-- New password -->
                                    <div class="col-md-6">
                                        <label for="exampleInputPassword2" class="form-label">New password *</label>
                                        <input type="password" name="newpass" class="form-control" id="exampleInputPassword2">
                                    </div>
                                    <!-- Confirm password -->
                                    <div class="col-md-12">
                                        <label for="exampleInputPassword3" class="form-label">Confirm Password *</label>
                                        <input type="password" name="renewpass" class="form-control" id="exampleInputPassword3">
                                    </div>
                                </div>
                            </div>
                        </div> 
                          <div class="gap-3 d-md-flex justify-content-md-end text-center">
<!--                            <button type="button" class="btn btn-danger btn-lg">Delete profile</button>-->
                        <input type ="submit" class="btn btn-primary btn-lg" value="Update" >
<!--                            <button type="button" class="btn btn-primary btn-lg">Update profile</button>-->
                        </div>
                    </form>
                </div> <!-- Row END -->
            </div>
        </div>

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

