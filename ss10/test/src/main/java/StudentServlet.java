import model.IdClass;
import model.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentServlet", urlPatterns = "/student")
public class StudentServlet extends HttpServlet {
    static List<Student> studentList = new ArrayList<>();
    static List<IdClass> idClassList = new ArrayList<>();
    static {
        studentList.add(new Student(1231,"uy","C0622G1"));
        studentList.add(new Student(1232,"bom","C0722G1"));
        studentList.add(new Student(1232,"truong","C0822G1"));
        idClassList.add(new IdClass(707,"C0622G1"));
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("studentList",studentList);
        request.setAttribute("idcl",idClassList);
        request.getRequestDispatcher("/studentList.jsp").forward(request,response);
    }
}
