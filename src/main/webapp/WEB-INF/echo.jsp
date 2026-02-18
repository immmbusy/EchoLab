<%--
  Created by IntelliJ IDEA.
  User: yydsy
  Date: 2/18/2026
  Time: 9:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Echo Result</title>
</head>
<body>
<h1>Servlet to JSP Echo</h1>

<ul>
    <li><strong>Greeting:</strong> Hello, ${name}! You are ${age} years old.</li>
    <li><strong>Current Time:</strong> ${currentTime}</li>
    <li><strong>Server Info:</strong> ${serverInfo}</li>
    <li><strong>Request Method:</strong> ${requestMethod}</li>
</ul>

</body>
</html>
