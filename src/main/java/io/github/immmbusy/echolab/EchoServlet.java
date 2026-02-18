package io.github.immmbusy.echolab;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

// Map the servlet to /echo
@WebServlet(name = "EchoServlet", urlPatterns = {"/echo"})
public class EchoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 1. Read request parameters from the URL
        String nameParam = request.getParameter("name");
        String ageParam = request.getParameter("age");

        // Optional: Handle nulls to avoid "Hello null" if accessed without params
        if (nameParam == null) nameParam = "Guest";
        if (ageParam == null) ageParam = "Unknown";

        // 2. Store values in Request Scope (Attributes)
        // These are the keys (variable names) the JSP will use in ${...}
        request.setAttribute("name", nameParam);
        request.setAttribute("age", ageParam);
        request.setAttribute("currentTime", new Date()); // java.util.Date
        request.setAttribute("serverInfo", getServletContext().getServerInfo());
        request.setAttribute("requestMethod", request.getMethod());

        // 3. Forward the request to the JSP
        // Note the leading slash. This path is relative to the webapp root.
        request.getRequestDispatcher("/WEB-INF/echo.jsp").forward(request, response);
    }

    // Also handle POST requests by sending them to doGet
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}