<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Welcome Page</title>
        <link href="css/custom.css" rel="stylesheet" type="text/css"/>
        <link href="css/regFrom.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        
    </head>
    <body>
        <%@ include file="header.jsp" %><br>
        <div class="content-dummy">
            <div class="container">
                <div class="row mt-5">
                    <div class="col-lg-7 col-xl-6 mx-auto mt-5">
                        <div class="card shadow-sm border border-success card-signin flex-row my-5">
                            <div class="card-body">
                                <h5 class="card-title text-center">Admin Log in</h5>
                                <form class="form-signin" action="adminLoginController.jsp">
                                    <div class="form-label-group">
                                        <input name="username" type="text" id="inputUsername" class="form-control" placeholder="Username" required >
                                    </div>
                                    <div class="form-label-group my-0">
                                        <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                                        <span class="d-block text-right my-1 mr-3 " href="#"><a href="reg.jsp">Forgot password?</a></span>
                                    </div>
                                    <div class="row ml-auto">
                                        <button class="btn btn-md  btn-success text-uppercase text-light" type="submit">Log in</button>
                                        <button class="btn btn-md  ml-2 btn-danger text-uppercase text-light" type="reset">reset</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="js/navSrink.js" type="text/javascript"></script>
</html>
