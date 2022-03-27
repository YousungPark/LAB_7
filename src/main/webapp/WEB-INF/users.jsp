<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </head>
    <body>
        
        
        <div class="container">
            <div class="row">
                <div class="col">
                    <h1>Yousung's User Management System</h1>
                    
                    <table class="table">
                        <thead>
                            <tr>
                                <th>E-mail</th>
                                <th>First name</th>
                                <th>Last name</th>
                                <th>Active</th>
                                <th>Delete/InActive</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="user" items="${users}">
                                <tr>
                                    <td>${user.email}</td>
                                    <td>${user.firstName}</td>
                                    <td>${user.lastName}</td>
                                    <td>${user.active ? "Y" : "N"}</td>
                                    <td>
                                        <a href="<c:url value="user">
                                                <c:param name="action" value="delete" />
                                                 <c:param name="email" value="${user.email}" />
                                                 </c:url>">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
    <h4>Add User</h4>   
        <div class="container">
            <div class="row">
                <div class="col">
                    <form action="user?action=add" method="POST">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Email</th>
                                <th>First name</th>
                                <th>Last name</th>
                                <th>Password</th>
                                <th>Role ID</th>     
                            </tr>
                            </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <input type="email" name="email" >
                                </td>
                                <td>
                                    <input type="text" name="firstName">
                                </td>
                                <td>
                                    <input type="text" name="lastName">
                                </td>
                                <td>
                                    <input type="password" name="password">
                                </td>
                                <td>
                                   <input type="number" name="roleId">
                                </td>
                                <td>
                                    <button type="submit" class="btn-primary"> Add </button>
                                </td>
                            </tr>
                        </tbody>
                        </table>
                    </form>
                </div>
            </div>        
        </div>
        <h4>Update User</h4>   
        <div class="container">
            <div class="row">
                <div class="col">
                    <form action="user?action=update" method="POST">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Email</th>
                                <th>First name</th>
                                <th>Last name</th>
                                <th>Password</th>
                                <th>Role ID</th>     
                            </tr>
                            </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <input type="email" name="email" >
                                </td>
                                <td>
                                    <input type="text" name="firstName">
                                </td>
                                <td>
                                    <input type="text" name="lastName">
                                </td>
                                <td>
                                    <input type="password" name="password">
                                </td>
                                <td>
                                   <input type="number" name="roleId">
                                </td>
                                <td>
                                    <button type="submit" class="btn-primary"> Update </button>
                                </td>
                            </tr>
                        </tbody>
                        </table>
                    </form>
                </div>
            </div>        
        </div> 
           
    </body>
</html>
