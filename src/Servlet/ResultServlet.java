package Servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class ResultServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String jsp = "result.jsp";
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");

        String name =request.getParameter("name");

        request.setAttribute("name",name);
        request.getRequestDispatcher(jsp).forward(request, response);
    }
}
