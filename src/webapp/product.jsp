Le produit est : 
<% 
 String product  = (String) request.getAttribute("product");
 if (product  != null) {
    out.println("<br>" + product  );
 }
%>