<%-- 
    Document   : customerBooking
    Created on : 13 Jun 2025, 12:28:04 am
    Author     : Aiman
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking List</title>
        <link rel="stylesheet" href="css/style2.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="container mt-3">
            <h2>Your Booking List</h2>

            <c:if test="${empty bookings}">
                <div class="text-center">NO BOOKING YET</div>
            </c:if>
            <c:if test="${not empty bookings}">

                <!--<a href="booking?action=new" class="btn">Add New Booking</a>-->
                <table class="text-center">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Room No</th>
                            <th>Check-In</th>
                            <th>Check-Out</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach items="${bookings}" var="booking">

                            <tr>
                                <td><c:out value="${booking.bookingId}"/></td>
                                <td><c:out value="${booking.roomNumber}"/></td>
                                <td><c:out value="${booking.checkIn}"/></td>
                                <td><c:out value="${booking.checkOut}"/></td>
                                <td><c:out value="${booking.status}"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="alert alert-success" role="alert">
                    Please contact admin for cancellation.
                </div>
            </c:if>
        </div>
    </body>
</html>
