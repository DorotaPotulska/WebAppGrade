<%@ page import="com.grade.webapp.Grade" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: cdc4
  Date: 18.07.2020
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="/navigator.jsp"/>
<%
    Object gradeListResult = session.getAttribute("gradeList");
    List<Grade> gradeList;
    if(gradeListResult instanceof List){
        gradeList = (List<Grade>) gradeListResult;
    }else {
        gradeList = new ArrayList<>();
    }
    out.print("<table>");
    out.print("<tr>" +
            "<th>Id</th>" +
            "<th>Date Added</th>" +
            "<th>Subject</th>" +
            "<th>Value</th>" +
            "<th>Corrected</th>" +
            "</tr>");
    for (int i = 0; i < gradeList.size(); i++) {
        out.print("<tr>");
        out.print("<td>");
        out.println(gradeList.get(i).getId());
        out.print("</td>");
        out.print("<td>");
        out.println(gradeList.get(i).getDateAdded());
        out.print("</td>");
        out.print("<td>");
        out.println(gradeList.get(i).getSubject());
        out.print("</td>");
        out.print("<td>");
        out.println(gradeList.get(i).getValue());
        out.print("</td>");
        out.print("<td>");
        out.println(gradeList.get(i).isCorrected());
        out.print("</td>");
        out.println("<a href=\"gradeEditHandler.jsp?studentIndex="+gradeList.get(i).getId()+"\">Edit</a>");
        out.print("</td>");
        out.print("<td>");
        out.println("<a href=\"gradeDeleteHandler.jsp?studentIndex="+gradeList.get(i).getId()+"\">Delete</a>");
        out.print("</td></tr>");
    }
    out.print("</table>");
%>
</body>
</html>
