<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import="com.exavalu.services.RoleService"%>
<%@page import="com.exavalu.services.DepartmentService"%>
<%@page import="com.exavalu.entities.Department"%>
<%@page import="com.exavalu.entities.Role"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.exavalu.entities.Employee"%>
<%@page import="com.exavalu.entities.Employee"%>

<!doctype html>
<html lang="en">
    <head>        
        <title>Search Page</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/product/">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/menu_css.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/product.css" rel="stylesheet">


    </head>


    <body class="text-center">

        <header class="site-header sticky-top py-1 ">
            <nav class="container d-flex flex-column flex-md-row justify-content-between ">
                <a class="py-2" href="home.jsp" aria-label="Product">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="d-block mx-auto" role="img" viewBox="0 0 24 24"><title>Product</title><circle cx="12" cy="12" r="10"/><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"/></svg>
                </a>
                <a class="py-2 d-none d-md-inline-block" href="addemployee.jsp">Add Employee</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Show Employee</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Search Employee</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Update Employee</a>
                <a class="py-2 d-none d-md-inline-block" href="Logout">Sign Out </a>
            </nav>
        </header>

        <main class="form-signin w-80 m-auto text-center">
            <!--POST METHOD TO HIDE USER DATA-->
            <!--            <table class="table table-bordered table-striped text-center ">-->
            <form action="Search" method="get" class="form-horizontal"> 
                <table class="table table-striped ">
                    <tr>
                        <th>First Name </th>
                        <th>Last Name</th>
                        <th>Gender</th>
                        <th>Department</th>
                        <th>Role</th>
                    </tr>

                    <tr>
                        <td>
                            <div class="mt-2 form-floating">
                                <input type="text" class="form-control" id="floatingPassword" placeholder="firstName" name="firstName">
                                <label for="floatingPassword">Enter First Name</label>
                            </div>
                        </td>

                        <td>
                            <div class="mt-2 form-floating">
                                <input type="text" class="form-control" id="floatingPassword" placeholder="Password" name="lastName">
                                <label for="floatingPassword">Enter Last Name</label>
                            </div>
                        </td>

                        <td>
                            <div class="mt-2 form-floating">
                                <input type="text" class="form-control" id="floatingPassword" placeholder="First Name" name="gender">
                                <label for="floatingPassword">Enter Gender</label>
                            </div>
                        </td>

                        <td>
                            <div class="mt-2 form-floating">

                                <select name="departmentId" class="form-select" id="departmentId" >
                                    <option value="0">Select Department</option>
                                    <c:forEach items="${DepartmentService.getAllDepartment()}" var="dept">
                                        <option value="${dept.getDepartmentId()}">${dept.getDepartmentName()}</option>
                                    </c:forEach> 
                                </select>
                                <label for="floatingPassword">Select Department</label>
                            </div>
                        </td>

                        <td>
                            <div class="mt-2 form-floating">

                                <select name="roleId" class="form-select" id="roleId">
                                    <option value="0">Select role</option>
                                    <c:forEach items="${RoleService.getAllRoles()}" var="role">

                                        <option value="${role.rolesId}">
                                            ${role.rolesName}
                                        </option>

                                    </c:forEach>
                                </select> 
                                <label for="floatingPassword">Select Role</label>
                            </div>
                        </td>

                    </tr>

                </table> 
                <div class="form-control col-sm">
                    <button type="submit" class="btn btn-success">SEARCH</button>
                </div>
            </form>


        </div>



        <div class="row justify-content-center">
            <div class="col-auto">
                <c:if test="${EmpList!=null}">
                    <table class="table table-bordered table-striped text-center " id="example">
                        <thead>
                            <tr>
                                <th>Employee Id  </th>
                                <th>First Name </th>
                                <th>Last Name</th>
                                <th>Phone</th>
                                <th>Address</th>
                                <th>Gender</th>
                                <th>Age</th>
                                <th>Department</th>
                                <th>Role</th>
                                <th>Basic Salary</th>
                                <th>Car Allowance</th>
                                <th>Action</th>

                            </tr>
                        </thead>

                        <tbody>

                            <c:forEach items="${EmpList}" var="emp">                                


                            <td>${emp.employeeId}</td>  
                            <td>${emp.firstName}</td>
                            <td>${emp.lastName}</td>
                            <td>${emp.phone}</td>
                            <td>${emp.address}</td>                          
                            <td>${emp.gender}</td>
                            <td>${emp.age}</td>
                            <td>${emp.departmentName}</td>
                            <td>${emp.roleName}</td>
                            <td>${emp.basicSalary}</td>
                            <td>${emp.carAllaowance}</td>
                            <td> 
                                <a href=EditEmployee?employeeId=${emp.employeeId}
                                   button type="submit" class="btn btn-danger">Edit</button>

                                </a>

                            </td>
                            </tr>

                        </c:forEach>

                        </tbody>
                    </table>
                </c:if>

            </div>
        </div>

    </main>
</body>
</html>