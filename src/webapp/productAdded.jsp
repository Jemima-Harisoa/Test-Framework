<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%
    Map<String,Object> data = (Map<String,Object>) request.getAttribute("data");
    if (data == null) {
        out.println("Aucune donnée reçue.");
        return;
    }
    String productName = (String) data.get("productName");
    String message = (String) data.get("message");
    List<String> productList = (List<String>) data.get("productList");
%>
<h1>Confirmation</h1>
<p><b><%= message %></b></p>
<p>Produit ajouté : <%= productName %></p>

<% if (productList != null) { %>
    <h2>Liste actuelle des produits</h2>
    <ul>
    <% for (String p : productList) { %>
        <li><%= p %></li>
    <% } %>
    </ul>
<% } %>