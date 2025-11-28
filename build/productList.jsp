<%@ page import="java.util.List" %>
<% 
 List<String> productList = (List<String>) request.getAttribute("productList");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Produit Ajouté</title>
</head>
<body>
    <h1>Produit ajouté avec succès !</h1>
    
    <h2>Liste des produits :</h2>
    <ul>
 <% if (productList != null) { 
     for (String product : productList) {
         out.println("<li>" + product + "</li>");
     }
 }%>
    </ul>
    
    <a href="productForm.jsp">Ajouter un autre produit</a>
</body>
</html>