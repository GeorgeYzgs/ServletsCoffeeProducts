<%-- 
    Document   : UpdateProduct
    Created on : Feb 25, 2020, 9:39:27 PM
    Author     : George.Giazitzis
--%>

<%@page import="entities.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <body>
        <% Product p = (Product) request.getAttribute("product");%>
        <h1>Update Product!</h1>
        <form action="UpdateRow" method="GET">
            ID: <input name="productID" type="number" placeholder="${p.id}">
            TITLE: <input name="productTitle"type="text" placeholder="${p.title}">
            DESCRIPTION:<input name="productDescription"type="text" placeholder="${p.description}">
            PRICE:<input name="productPrice" type="number" placeholder="${p.price}">
            <input type="submit" value="UPDATE">
        </form>
    </body>
</html>
