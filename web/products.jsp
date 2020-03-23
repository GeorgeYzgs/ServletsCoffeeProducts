<%-- 
    Document   : products
    Created on : Feb 24, 2020, 8:33:52 PM
    Author     : George.Giazitzis
--%>

<%@page import="services.ProductService"%>
<%@page import="java.util.List"%>
<%@page import="entities.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Products</title>
    </head>
    <body>
        <h1>Product List</h1>
        <table style="width: 60%">
            <% List<Product> products = (List<Product>) request.getAttribute("products");%>
            <% List<Product> productsList = (List<Product>) new ProductService().findAllProducts();%>
            <c:forEach items="${products}" var="p">
                <tr>
                    <td> ${p.id}</td>
                    <td> ${p.title}</td>
                    <td> ${p.description}</td>
                    <td> ${p.price}</td>
                    <td> <form action="DeleteRow" method="POST">
                            <input name="productID" value="${p.id}" type="hidden">
                            <input type="submit" value="DELETE"></form> </td>
                    <td> <form action="UpdateRow" method="POST">
                            <input name="productID" value="${p.id}" type="hidden">
                            <input type="submit" value="UPDATE"></form> </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
