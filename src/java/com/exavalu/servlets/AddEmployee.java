/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.exavalu.servlets;

import com.exavalu.entities.Employee;
import com.exavalu.services.EmployeeService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
public class AddEmployee extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("into the servlet addemployee");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String age = request.getParameter("age");
        String departementId = request.getParameter("departmentId");
        String roleId = request.getParameter("roleId");
        String basicSalary = request.getParameter("basicSalary");
        String carAllowence = request.getParameter("carAllowence");
        String employeeId = request.getParameter("employeeId");

        Employee emp = new Employee();
        emp.setEmployeeId(employeeId);
        emp.setFirstName(firstName);
        emp.setLastName(lastName);
        emp.setAddress(address);
        emp.setPhone(phone);
        emp.setGender(gender);
        emp.setAge(age);
        emp.setBasicSalary(basicSalary);
        emp.setCarAllaowance(carAllowence);
        emp.setPhone(phone);
        emp.setRoleId(roleId);
        emp.setDepartmentId(departementId);

        boolean result = EmployeeService.addEmp(emp);

        if (result) {
            String errorMsg = " Employee Added Successfully ";
            request.setAttribute("ErrorMsg", errorMsg);
            request.getRequestDispatcher("addemployee.jsp").forward(request, response);
        } else {
            String errorMsg = "Something went wrong!! Please try again";

            request.setAttribute("ErrorMsg", errorMsg);

            request.getRequestDispatcher("addemployee.jsp").forward(request, response);
            //Why we used forward here??
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
