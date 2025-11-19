<%@ page import="java.util.List" %>
Liste des produits
<% 
 List<String> productList = (List<String>) request.getAttribute("productList");
 if (productList != null) {
     for (String product : productList) {
         out.println(product + "<br>");
     }
 }
%>