package servlet;

import javax.imageio.stream.ImageInputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlet", urlPatterns = "/login")
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     String a = request.getParameter("uy");
     String result = "uy";
     if (a.equals(result)){
         request.setAttribute("hienthi","ok");
         request.getRequestDispatcher("uy.jsp").forward(request,response);
     }else {
         request.setAttribute("hienthi","not ok");
         request.getRequestDispatcher("uy.jsp").forward(request,response);
     }
     request.setAttribute("truongkhang", a+result);
     request.getRequestDispatcher("uy.jsp").forward(request,response);
    }
}
