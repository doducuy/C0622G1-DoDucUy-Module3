package controller;

import model.Employee;
import model.Position;
import service.impl.EmployeeService;
import service.impl.PositionService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet(name = "EmployeeServlet", urlPatterns = "/employee")
public class EmployeeServlet extends HttpServlet {
    private  EmployeeService employeeService =new EmployeeService();
    private PositionService positionService =new PositionService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        switch (action){
            case "add":
                saveEmployee(request,response);
                break;
            case "edit":
                saveEditEmployee(request,response);
                break;
        }
    }

    private void saveEditEmployee(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String idCard = request.getParameter("idCard");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int positionId = Integer.parseInt(request.getParameter("positionId"));
        int educationDegreeId = Integer.parseInt(request.getParameter("educationDegreeId"));
        int divisionId = Integer.parseInt(request.getParameter("divisionId"));
        String userName = request.getParameter("userName");
        Employee employee =new Employee(id,name,birthday,idCard,salary,phoneNumber,email,address,positionId,educationDegreeId,divisionId,userName);
        employeeService.editEmloyee(employee);
        showEmployeeList(request,response);

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                addEmployeeForm(request,response);
                break;
            case "delete":
                deleteEmployee(request,response);
                break;
            case "edit":
                editEmployeeForm(request,response);
                break;
            case "search":
                searchEmployee(request,response);
            default:
                showEmployeeList(request, response);
                break;
        }
    }

    private void searchEmployee(HttpServletRequest request, HttpServletResponse response) {
        String searchName = request.getParameter("searchName");
        request.setAttribute("employeeList",employeeService.searchEmployee(searchName));
        try {
            request.getRequestDispatcher("/view/employeeList.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editEmployeeForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Employee employee= employeeService.findById(id);
        try {
            request.setAttribute("id",id);
            request.setAttribute("employee", employee);
            request.getRequestDispatcher("/view/editEmployeeForm.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        employeeService.deleteEmployee(id);
        showEmployeeList(request,response);
    }


    private void saveEmployee(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String idCard = request.getParameter("idCard");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int positionId = Integer.parseInt(request.getParameter("positionId"));
        int educationDegreeId = Integer.parseInt(request.getParameter("educationDegreeId"));
        int divisionId = Integer.parseInt(request.getParameter("divisionId"));
        String userName = request.getParameter("userName");
        Employee employee =new Employee(name,birthday,idCard,salary,phoneNumber,email,address,positionId,educationDegreeId,divisionId,userName);
        employeeService.addEmployee(employee);
//        showEmployeeList(request,response);
        request.setAttribute("mess", "Thêm mới thành công!!!   ");
        try {
            request.getRequestDispatcher("/view/addEmployeeForm.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void addEmployeeForm(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("/view/addEmployeeForm.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEmployeeList(HttpServletRequest request, HttpServletResponse response) {
        List<Employee> employeeList= employeeService.showEmployeeList();
        List<Position> positionList =  positionService.showPositionList();
        request.setAttribute("employeeList", employeeList);
        request.setAttribute("positionList",positionList);
        try {
            request.getRequestDispatcher("view/employeeList.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
