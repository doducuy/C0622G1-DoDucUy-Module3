<%--
  Created by IntelliJ IDEA.
  User: Vanxuan
  Date: 10/3/2022
  Time: 3:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet" href="../../bootstrap520/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../datatables/css/dataTables.bootstrap5.min.css"/>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
    <form action="/users?action=search" method="post">
        <h1>Search Country</h1>
        <h2>
            <input type="text" name="country">
            <input type="submit" value="Search">
        </h2>
    </form>
    <form action="/users?action=sort" method="get">
        <h1>Sort by name</h1>
        <h2>
            <input type="submit" value="Sort">
        </h2>
    </form>
</center>
<div align="center">
    <caption><h2>List of Users</h2></caption>
    <table id="user-table" class="table table-striped table-bordered" style="width:100%">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                        <%--                    <a href="/users?action=edit&id=${user.id}">Edit</a>--%>
                        <%--                    <a href="/users?action=delete&id=${user.id}">Delete</a>--%>
                        <%--                            <a href="/users?action=edit&id=${user.id}">Edit</a>&ndash;%&gt;--%>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#hehe${user.id}">
                        Edit
                    </button>

                    <!-- Modal edit -->
                    <div class="modal fade" id="hehe${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel" style="color: #000">s???a s???n ph???m</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body" style="color: #000" >
                                    B???n c?? mu???n ch???nh s???a kh??ng ?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Quay l???i</button>
                                    <a href="/users?action=edit&id=${user.id}" class="btn btn-danger" >Edit</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Button trigger modal edit -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal${user.id}">
                        Xo??
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel_delete" style="color: #000">Xo?? s???n ph???m</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body" style="color: #000" >
                                    B???n c?? mu???n xo?? kh??ng ?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Quay l???i</button>
                                    <a href="/users?action=delete&id=${user.id}" class="btn btn-danger" >Xo??</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>

            </tr>
        </c:forEach>
        </tbody>

    </table>
</div>
<%--<script src="../../jquery/jquery-3.5.1.min.js"></script>--%>
<%--<script src="../../datatables/js/jquery.dataTables.min.js"></script>--%>
<%--<script src="../../datatables/js/dataTables.bootstrap5.min.js"></script>--%>
<%--<script>--%>
<%--    $(document).ready(function () {--%>
<%--        $('#tableStudent').dataTable({--%>
<%--            "dom": 'lrtip',--%>
<%--            "lengthChange": false,--%>
<%--            "pageLength": 5--%>
<%--        });--%>
<%--    });--%>
<%--    --%>
<%--// </script>--%>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    function doSth() {
        alert(document.getElementById("price").textContent);
    }

    $(document).ready(function () {
        $('#user-table').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>
</body>
</html>