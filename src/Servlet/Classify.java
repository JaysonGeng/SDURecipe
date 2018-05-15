package Servlet;

import java.io.IOException;

public class Classify extends javax.servlet.http.HttpServlet {
    String jsp = "Classify.jsp";

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        String classify = request.getParameter("classify");
        request.setAttribute("classify", classify);
        request.getRequestDispatcher(jsp).forward(request, response);
    }
}
