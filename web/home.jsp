<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import="com.exavalu.entities.Employee"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<c:set var="user" value="${User}"/>
<c:if test="${user == null}">
    <c:redirect url="login.jsp"/>
</c:if>
<!doctype html>
<html lang="en">


    <head>      

        <title>Employee Management Web Application</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/product/">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/menu_css.css" rel="stylesheet">


        <link href="css/product.css" rel="stylesheet">


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css"/>
        <style>
            #example_wrapper{
                width: 100%;
                display: block;
                margin: auto;
            }
        </style>

    </head>
    <body>

        <jsp:include page="menu.jsp"></jsp:include>




            <table class="table table-bordered table-hover" id = "example">
                <thead class="thead-dark" style="background: skyblue" >
                    <tr>
                        <th scope="col">
                            Employee Id
                        </th>
                        <th scope="col">
                            First Name
                        </th>
                        <th scope="col">
                            Last Name
                        </th>
                        <th scope="col">
                            Address
                        </th>
                        <th scope="col">
                            Phone
                        </th>
                        <th scope="col">
                            Gender
                        </th>
                        <th scope="col">
                            Age
                        </th>
                        <th scope="col">
                            Department
                        </th>
                        <th scope="col">
                            Role
                        </th>
                        <th scope="col">
                            Basic Salary
                        </th>
                        <th scope="col">
                            Car Allowance
                        </th>
                        <th scope="col">
                            Action
                        </th>

                    </tr>
                </thead>
                <tbody>

                <c:forEach items="${EmpList}" var="emp">

                    <tr>
                        <td>
                            ${emp.employeeId}
                        </td>
                        <td>
                            ${emp.firstName}
                        </td>
                        <td>
                            ${emp.lastName}
                        </td>
                        <td>
                            ${emp.address}
                        </td>
                        <td>
                            ${emp.phone}
                        </td>
                        <td>
                            ${emp.gender}
                        </td>
                        <td>
                            ${emp.age}
                        </td>
                        <td>
                            ${emp.departmentName}
                        </td>
                        <td>
                            ${emp.roleName}
                        </td>
                         
                        <td>
                            ${emp.basicSalary}
                        </td>
                        <td>
                            ${emp.carAllaowance}
                        </td>
                        <td> 

                            <a href=EditEmployee?employeeId=${emp.employeeId}>Edit</a>


                        </td>
                    </tr>
                </c:forEach>


            </tbody>


        </table>


        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>


    </body>
</html>
