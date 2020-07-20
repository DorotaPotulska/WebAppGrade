<%@ page import="com.grade.webapp.Grade" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: cdc4
  Date: 19.07.2020
  Time: 09:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grade Delete Handler</title>
</head>
<body>
<%
    String gradeId = request.getParameter("gradeId");
    Object gradeListResult = session.getAttribute("gradeList");
    List<Grade> gradeList;
    if(gradeListResult instanceof List){
        gradeList = (List<Grade>) gradeListResult;
    }else {
        gradeList = new ArrayList<>();
    }
    for (int i = 0; i < gradeList.size(); i++) {
        if (gradeList.get(i).getId().equals(gradeId)){
            gradeList.remove(gradeList.get(i));
        }
    }
    session.setAttribute("gradeList",gradeList);
    response.sendRedirect("/gradeList.jsp");

%>
</body>
</html>
