<%
if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
    You are not logged in<br/>
    <a href="index.jsp">Please Login</a>
<%} else {
%>
    Welcome <%=session.getAttribute("username")%>
    <%=session.getAttribute("type")%>
    <a href='logout.jsp'>Log out</a>
<%
 }
%>