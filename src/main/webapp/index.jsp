<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Echo Lab Input</title>
</head>
<body>
<h1>Hello World!</h1>

<h3>Enter your details:</h3>

<!--
      We use ${pageContext.request.contextPath}/echo to automatically
      generate the correct link (e.g., /EchoLab-1.0-SNAPSHOT/echo).
      This prevents 404 errors.
    -->
<form action="${pageContext.request.contextPath}/echo" method="GET">

    <label for="name">Name:</label>
    <!-- The user can type any name here -->
    <input type="text" id="name" name="name" placeholder="Enter your name" required>
    <br/><br/>

    <label for="age">Age:</label>
    <!-- The user can type any age here -->
    <input type="number" id="age" name="age" placeholder="Enter your age" required>
    <br/><br/>

    <button type="submit">Submit to Servlet</button>
</form>

</body>
</html>