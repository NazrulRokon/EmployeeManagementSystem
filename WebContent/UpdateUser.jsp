<%@page import="com.emp.mgnt.sys.controller.UserDAO"%>

<jsp:useBean id="u" class="com.emp.mgnt.sys.bean.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    int i = UserDAO.update(u);
    response.sendRedirect("viewUsers.jsp");
%>