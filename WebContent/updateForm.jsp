
<%@page import="com.emp.mgnt.sys.bean.UserBean"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Form</title>
    </head>
    <body>
        <%@ include file="header.jsp" %> <br>
        <%@page import="com.emp.mgnt.sys.controller.*"%>
        <%
        String id = request.getParameter("id");
        UserBean u = UserDAO.getRecordById(Integer.parseInt(id));
        %>
        <h1>Edit Form</h1>
        <form action="UpdateUser.jsp" method="post">
            <input type="hidden" name="id" value="<%=u.getId()%>"/>
            <table>
                <tr><td>Name:</td><td><input type="text" name="name" value="<%= u.getFullName()%>"/></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>
                <tr><td>Email:</td><td><input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>
                <tr><td>Salary:</td><td><input type="number" step="0.01" name="salary" value="<%= u.getSalary()%>"/></td></tr>
                <tr><td>Gender</td><td><input type="radio" name="sex" value="male"/>Male <input type="radio" name="sex" value="female"/>Female </td></tr>
                <tr><td>Country:</td><td>
                        <select name="country">
                            <option>India</option>
                            <option>New Zealand</option>
                            <option>Srilanka</option>
                            <option>Other</option>
                        </select>
                    </td></tr>
                <tr><td colspan="2"><input type="submit" value="Update"/></td></tr>
            </table>
        </form>
    </body>
</html>