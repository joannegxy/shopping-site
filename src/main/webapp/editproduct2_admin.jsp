<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.onlinesite.onlinesite.*"%>
<%@ page import="java.sql.*"%>
<%
  //Getting all the inputs from the admin
  int id = Integer.parseInt(request.getParameter("pid"));
  String pname = request.getParameter("pname");
  String price = request.getParameter("price");
  String description = request.getParameter("description");
  String mprice = request.getParameter("mprice");
  String status = request.getParameter("status");
  //Querying to the database
  int updateProduct = Connect_to_sql.insertUpdateFromSqlQuery("update product set name='" + pname + "',price='" + price + "',description='" + description + "',ori_price='" + mprice + "',active='" + status + "' where id='" + id + "'");
  if (updateProduct > 0) {
    response.sendRedirect("viewproducts_admin.jsp");
  } else {
    response.sendRedirect("viewproducts_admin.jsp");
  }
%>