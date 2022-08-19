<%-- 
    Document   : listbuses
    Created on : Aug 8, 2022, 10:53:25 PM
    Author     : pc
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<h1>Danh sách xe khách</h1>

<div class = "container">

    <div class="row">
        <h4>Nhập tên chuyến xe muốn tìm:</h4>
        <c:url value="/admin/listbuses/" var="action" />
        <form method="get" action="${action}" class="d-flex">
            <input class="form-control me-2" name="kw3" type="text" placeholder="Nhập từ khóa...">
            <button type="submit" class="btn btn-primary" type="button">Tìm</button>
        </form>
    </div>
    <h4>Danh sách chuyến xe:</h4>
    <div class="container-fluid">
        <c:if test="${routebuses.size() == 0}">
            <p>
                <em>Không có tuyến xe nào!!!</em>
            </p>
        </c:if>
        <c:forEach items="${routebuses}" var = "b" > 
            <div class="row" style="padding: 16px">
                <div class="col-sm-3 col-md-6 col-lg-4 col-xl-2">
                    <img class="card-img-top" class = "img-fluid" src="${b.busesId.image}" alt="Card image" />   
                </div>
                <div class="col-sm-9 col-md-6 col-lg-8 col-xl-6">
                    <h5 class="card-title">${b.busesId.busesName}</h5>
                    <h7 class="card-title">Ngày đi: ${b.ngaydi}</h7></br>
                    <h7 class="card-title">Giờ đi: ${b.giodi}</h7></br>
                    <h7 class="card-title">Giá vé: ${b.price}</h7></br>
                    <h7 class="card-title">Số ghế trống: ${b.busesId.loaixeID.soGhe}/${b.busesId.loaixeID.soGhe}</h7></br>
                    <h7 class="card-title">Loại xe: ${b.busesId.loaixeID.loaiXe}</h7></br>
                    <h7 class="card-title">Tên tài xế: ${b.busesId.driverID.firstname} ${b.busesId.driverID.lastname} </h7>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-8 col-xl-2">
                    <button type="submit" class="btn btn-primary" type="button">Sửa</button>
                </div>
            </div> 
        </c:forEach>
    </div>

</div>


