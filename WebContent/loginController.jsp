<%@ page import ="java.sql.*" %>
<%
    String userName = request.getParameter("username");
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");//driver
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hw32", "root", "");//URL
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from employees where username='" + userName + "' and password='" + pwd
            + "'");
    if (rs.next()) {
        session.setAttribute("username", userName);
//out.println("welcome " + userid);
//out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>