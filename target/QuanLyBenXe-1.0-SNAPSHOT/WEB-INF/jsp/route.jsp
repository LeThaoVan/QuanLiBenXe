<%-- 
    Document   : admin
    Created on : Aug 19, 2022, 9:03:38 PM
    Author     : pc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<h1 class="text-center text-primary">Admin</h1>


<c:url value="/admin" var="action" />

<div class = "container">
    <div>
        <h2>Danh sách tuyến xe</h2>
        <table id="buses">
            <tr>
                <th>Mã tuyến xe</th>
                <th>Tên tuyến xe</th>
                <th>Điểm xuất phát</th>
                <th>Điểm đến</th>
                <th>Ngày tạo</th>
            </tr>
            <c:forEach items="${routes}" var = "b"> 
            <tr>
                <td>${b.rid}</td>
                <td>${b.routename}</td>
                <td>${b.startingpoint.name}</td>
                <td>${b.destination.name}</td>
                <td>${b.createdatetime}</td>
            </tr>
            </c:forEach>
        </table>
    </div>
</div>
