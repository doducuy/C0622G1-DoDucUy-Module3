import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ConvertServlet" , urlPatterns = "/aaa")
public class ConvertServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float rate = Float.parseFloat(request.getParameter("rate"));
        float usd = Float.parseFloat(request.getParameter("usd"));
        float vnd = rate * usd;
        request.setAttribute("rate1",rate);
        request.setAttribute("usd1",usd);
        request.setAttribute("vnd1",vnd);
        request.getRequestDispatcher("converter.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
