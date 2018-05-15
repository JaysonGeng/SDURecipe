package Servlet;

import Servlet.FindBookPictureImpl;

import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/bookPicture")
public class FindBookPictureServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private FindBookPictureImpl fbpi = new FindBookPictureImpl(); //调用service

    public FindBookPictureServlet() {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String bookId = request.getParameter("bookId"); //前端传来的图片id
        byte[] bookPicture = fbpi.findBookPicture(Integer.parseInt(bookId)); //获得bookPicture
        response.setContentType("image/jpeg");  //设置图片格式
        OutputStream out = response.getOutputStream(); //打开输出流
        out.write(bookPicture);
        out.flush();
        out.close();
    }
}