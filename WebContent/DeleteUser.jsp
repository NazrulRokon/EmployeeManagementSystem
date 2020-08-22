<%@page import="com.emp.mgnt.sys.bean.UserBean"%>
<%@page import="com.emp.mgnt.sys.controller.UserDAO"%>
<jsp:useBean id="u" class="com.emp.mgnt.sys.bean.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    UserDAO.delete(u);
    response.sendRedirect("viewUsers.jsp");
%>