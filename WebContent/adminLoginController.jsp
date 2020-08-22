<%-- 
    Document   : adminLoginController
    Created on : Mar 29, 2019, 1:06:18 PM
    Author     : Rokon-Nazrul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
    String userName = request.getParameter("username");
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");//driver
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hw32", "root", "");//URL
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admins where username='" + userName + "' and password='" + pwd
            + "'");
    if (rs.next()) {
        session.setAttribute("username", userName);
        session.setAttribute("type", rs.getString(4));
    //out.println("welcome " + userid);
    //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("viewUsers.jsp");
    } else {
        out.println("Invalid password <a href='adminLogin.jsp'>try again</a>");
    }
%>

