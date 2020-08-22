<%@page import="com.emp.mgnt.sys.controller.UserDAO"%>
<jsp:useBean id="u" class="com.emp.mgnt.sys.bean.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    int i = UserDAO.save(u);
    if (i > 0) {
//session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
// out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("userLogin.jsp");
    }
%>