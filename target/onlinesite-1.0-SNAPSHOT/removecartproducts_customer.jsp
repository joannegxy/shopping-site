<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.onlinesite.onlinesite.*"%>
<%@ page import="java.sql.*"%>
<%
    int productId = Integer.parseInt(request.getParameter("productId"));
    //Delete query for cart of particular id
    int removeCartProduct = Connect_to_sql.insertUpdateFromSqlQuery("delete from cart where product_id='" + productId + "' and customer_id='" + session.getAttribute("id") + "'");
    if (removeCartProduct > 0) {
        response.sendRedirect("checkout_page.jsp");
    } else {
        response.sendRedirect("checkout_page.jsp");
    }
%>