<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un produit</title>
</head>
<body>
    <h1>Ajouter un produit</h1>
    <form method="POST" action="products/add">
        <label for="productName">Nom du produit:</label>
        <input type="text" id="productName" name="productName" required />
        <button type="submit">Ajouter</button>
    </form>
</body>
</html>