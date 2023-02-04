
<%@page import="com.exavalu.services.RoleService"%>
<%@page import="com.exavalu.services.DepartmentService"%>
<%@page import="com.exavalu.entities.Department"%>
<%@page import="com.exavalu.entities.Role"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.exavalu.entities.Employee"%>
<%@page import="com.exavalu.entities.Employee"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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

        <style>
            .row{


                border: 2px solid blue;
                background-color:skyblue;
                width:1300px;
                align-content: center;
            }
            .col{


                border: 2px solid blue;
                background-color:skyblue;              
                width: 1300px;
                align-content: center;
            }
        </style>


    </head>


    <header class="site-header sticky-top py-1 ">
        <nav class="container d-flex flex-column flex-md-row justify-content-between ">
            <a class="py-2" href="home.jsp" aria-label="Product">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="d-block mx-auto" role="img" viewBox="0 0 24 24"><title>Product</title><circle cx="12" cy="12" r="10"/><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"/></svg>
            </a>
            <a class="py-2 d-none d-md-inline-block" href="#">Add Employee</a>
            <a class="py-2 d-none d-md-inline-block" href="#">Show Employee</a>
            <a class="py-2 d-none d-md-inline-block" href="search.jsp">Search Employee</a>
            <a class="py-2 d-none d-md-inline-block" href="#">Update Employee</a>
            <a class="py-2 d-none d-md-inline-block" href="Logout">Sign Out </a>
        </nav>




    </header>




  
    
                
    
    <c:if test="${SuccessMsg!=null}">
                    <div class="alert alert-danger" role="alert">
                        ${sucsess}
                    </div>
                </c:if>
            
    
     <c:if test="${ErrorMsg!=null}">
                    <div class="alert alert-danger" role="alert">
                        ${ErrorMsg}
                    </div>
                </c:if>
    

    <body class="text-center">
        <h1 class="p-3 mb-2 bg-primary text-white" >Enter Employee Details </h1>
        <br>
        <br>

        <form action="AddEmployee" method="post" class="container">
            <div class="row">
                <div class="col">

                    <b>First Name</b><input type="text" class="form-control"  pattern="[A-Za-z\s]+" title="Numbers/SpecialCharacter Not Allowed" placeholder="First name" required="text" name="firstName">

                </div>
                <div class="col">

                    <b> Last Name</b><input type="text" class="form-control" pattern="[A-Za-z\s]+" title="Numbers/SpecialCharacter Not Allowed" placeholder="Last name" required="text" name="lastName">
                </div>
            </div>
            <br>  <br>

            <div class="row">
                <div class="col">
                    <b> Address</b>  <input type="text" class="form-control" placeholder="Address" required="text" name="address">
                </div>
                <div class="col">
                    <b>Gender</b> <input type="text" class="form-control" pattern="[A-Za-z\s]+" title="Numbers/SpecialCharacter Not Allowed" placeholder="Gender" required="text"name="gender">
                </div>
                <div class="col">
                    <b>Phone</b><input type="text" class="form-control" pattern="[0-9]{10}"  title= "10 Digits Numeric Value Only" placeholder="Phone" required  name="phone">
                </div>
                <div class="col">
                    <b>Age</b><input type="text" class="form-control" pattern="[0-9]+" title="Only Numeric Value Allowed" placeholder="Age" required="text" name="age">
                </div>
            </div>
            <br> <br>
            <div class="row">

                <div class="col">
                    <b>Employee Id</b> <input type="text" class="form-control" pattern="[0-9]+" title="Only Numeric Value Allowed" placeholder="EmployeeId" required="text" name="employeeId">
                </div>
                <div class="col">
                    <b>Role Id</b><input type="text" class="form-control" pattern="[1-3]" title="Only Numeric Value Between 1-3 Allowed" placeholder="RoleId" required="text" name="roleId">
                </div>
                <div class="col">
                    <b>Department Id</b><input type="text" class="form-control" pattern="[1-5]" title="Only Numeric Value Between 1-5 Allowed" placeholder="DepatmentId" required="text" name="departmentId">
                </div>
                <div class="col">
                    <b>Basic Salary</b> <input type="text" class="form-control" pattern="[0-9]+" title="Only Numeric Value Allowed" placeholder="Basicsalary" required="text" name="basicSalary">
                </div>
                <div class="col">
                    <b>Car Allowance</b> <input type="text" class="form-control" pattern="[0-9]+" title="Only Numeric Value Allowed" placeholder="CarAllowence" required="text"name="carAllowence">
                </div>
            </div>
            <br><br>

            <button type="submit" class="btn btn-primary">Submit</button>

</html>