package Servlet;

import Dao.FankuiDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "FankuiServlet")
public class FankuiServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String content = request.getParameter("content");
        String qq = request.getParameter("qq");
        String phone = request.getParameter("phone");

        FankuiDao fankuiDao =new FankuiDao();
        fankuiDao.postfankui(content,qq,phone);

    }
}
