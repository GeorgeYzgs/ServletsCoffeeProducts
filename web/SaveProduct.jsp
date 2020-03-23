<%-- 
    Document   : SaveProduct
    Created on : Feb 24, 2020, 6:53:25 PM
    Author     : George.Giazitzis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Save Product</title>
    </head>
    <body>
        <h1>Lets Create a product!</h1>
        <form action="CoffeeProduct" method="POST">
            ID: <input type="number" name="id">
            Title: <input type="text" name="title">
            Description: <input type="text" name="description">
            Price:  <input type="number" name="price">
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>
