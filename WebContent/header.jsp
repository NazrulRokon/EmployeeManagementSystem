<%-- 
    Document   : header
    Created on : Mar 29, 2019, 12:16:51 PM
    Author     : Rokon-Nazrul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<nav class="navbar navbar-dark navbar-expand-lg navbar-transparent fixed-top">
    <!-- Brand -->
    <a class="navbar-brand ml-5 mr-auto d-none d-sm-block" href="#"><img src="resources/images/logo.png" alt=""/>Employee Management</a>
    <!-- Toggler/collapsibe Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mx-auto text-light">
            <li class="nav-item mx-auto">
                <a class="nav-link text-light"  href="index.jsp" >Home</a>
            </li>
            <li class="nav-item mx-auto">
                <a class="nav-link text-light" href="viewUsers.jsp">About us</a>
            </li>
            <li class="nav-item mx-auto">
                <a class="nav-link text-light" href="addUserForm.jsp">Contact us</a>
            </li>
        </ul>
        <%if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {%>


        <form class="form-inline justify-content-center mx-auto my-1 my-lg-0">
            <a class="btn btn-outline-light my-sm-0 mr-2" type="submit" href="userLogin.jsp"><i class="fa fa-sign-in"></i> Login</a>
            <a class="btn btn-outline-light my-sm-0 mr-2" href="registration.jsp"><i class="fa fa-user-plus"></i> Register</a>
            <a class="btn btn-outline-light my-sm-0" href="adminLogin.jsp"><i class="fa fa-user-edit">&#xf4fe;</i> Admin</a>
        </form>
        <%} else {
                if ((session.getAttribute("type") == "admin")) {%>
        <form>
            <div class="btn-group mr-5">
                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <%=session.getAttribute("username")%>
                </button>
                <div class="dropdown-menu">
                    <button class="dropdown-item" type="button">View Employee</button>
                    <button class="dropdown-item" type="button">Add Employee</button>
                    <button class="dropdown-item border border-top-secondery" type="button">Logout</button>
                </div>
            </div>
        </form>
        <%} else {%>
        <form>
            <div class="btn-group mr-5">
                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <%=session.getAttribute("username")%>
                </button>
                <div class="dropdown-menu">
                    <button class="dropdown-item" type="button">View Profile</button>
                    <button class="dropdown-item" type="button">Edit Profile</button>
                    <button class="dropdown-item border border-top-secondery" type="button">Logout</button>
                </div>
            </div>
        </form>
        <%}
            }%>
    </div>
</nav>
