<%@page import="com.emp.mgnt.sys.bean.UserBean"%>
<%@ page import="java.util.*,com.emp.mgnt.sys.controller.UserDAO"%>
<%@ include file="header.jsp" %> <br>
<%
    String spageid = request.getParameter("page");
    int pageid = Integer.parseInt(spageid);
    int total = 2;
    if (pageid == 1) {
    } else {
        pageid = pageid - 1;
        pageid = pageid * total + 1;
    }
    List<UserBean> list = UserDAO.getRecords(pageid, total);
    out.print("<h1>Page No: " + spageid + "</h1>");
    out.print("<table border='1' cellpadding='4' width='60%'>");
    out.print("<tr><th>Id</th><th>Name</th><th>Salary</th>");
    for (UserBean e : list) {
        out.print("<tr><td>" + e.getId() + "</td><td>" + e.getFullName() + "</td><td>" + e.getSalary() + "</td></tr> ");
    }
    out.print("</table>");
%>
<a href="paginationPage.jsp?page=1">1</a>
<a href="paginationPage.jsp?page=2">2</a>
<a href="paginationPage.jsp?page=3">3</a>