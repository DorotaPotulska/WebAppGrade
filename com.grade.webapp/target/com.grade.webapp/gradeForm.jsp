<%--
  Created by IntelliJ IDEA.
  User: cdc4
  Date: 18.07.2020
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Grade form</title>
</head>
<body>
<jsp:include page="/navigator.jsp"/>
<form action="gradeSubmitHandler.jsp" method="post">
    <label for="id">Index:</label>
    <input id="id" name="id" type="number"><br/>

<%--    <label for="dateAdded">Date added: </label>
    <input id="dateAdded" name="dateAdded" type="data"><br/>--%>

    <label for="subject">Subject: </label>
    <select name="subject" id="subject">
        <option name="English" value="ENGLISH">English</option>
        <option name="Polish" value="POLISH">Polish</option>
        <option name="It" value="IT">It</option>
        <option name="Math" value="MATH">Math</option>
    </select><br/>

    <label for="value">Value: </label>
    <input id="value" name="value" type="number" step="0.01" min="1" max="6"><br/>

    <label for="corrected">Is Corrected: </label>
    <input id="corrected" name="corrected" type="checkbox"><br/>

    <input type="submit">
</form>
</body>
</html>