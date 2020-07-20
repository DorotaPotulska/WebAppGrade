<%@ page import="com.grade.webapp.Grade" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="com.grade.webapp.GradeSubject" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grade Form</title>
</head>
<body>
<jsp:include page="/navigator.jsp"/>
<%
    String id = request.getParameter("id");
    LocalDateTime dateAdded = LocalDateTime.now();
    String subject = request.getParameter("subject");
    String value = request.getParameter("value");
    String corrected = request.getParameter("corrected");

   Grade grade = Grade.builder()
            .id(Long.parseLong(id))
            .dateAdded(dateAdded)
            .subject(GradeSubject.valueOf(subject))
            .value(Double.valueOf(value))
            .corrected(corrected !=null && corrected.equalsIgnoreCase("on"))
            .build();

    Object gradeListResult = session.getAttribute("gradeList");
    List<Grade> gradeList;
    if(gradeListResult instanceof List){
        gradeList = (List<Grade>) gradeListResult;
    }else {
        gradeList = new ArrayList<>();
    }
    gradeList.add(grade);
    session.setAttribute("gradeList", gradeList);
    response.sendRedirect("/gradeList.jsp");
%>
</body>
</html>
