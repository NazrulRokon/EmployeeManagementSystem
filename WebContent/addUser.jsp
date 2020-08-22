<%@page import="com.emp.mgnt.sys.controller.UserDAO"%>
<jsp:useBean id="u" class="com.emp.mgnt.sys.bean.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
//    int i = UserDAO.save(u);
//    if (i > 0) {
//        response.sendRedirect("AddUserSuccess.jsp");
//    } else {
//        response.sendRedirect("errorPage.jsp");
//    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
        <title>Add User Success</title>
        <link href="css/custom.css" rel="stylesheet" type="text/css"/>
        <link href="css/regFrom.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <jsp:include page="userForm.html"></jsp:include>
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="js/navSrink.js" type="text/javascript"></script>
</html>