package test;

import annotations.Controller;
import annotations.Mapping;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import model.View;

@Controller(name="productController")
public class ProductService {
    private List<String> productList = new ArrayList<>(Arrays.asList(
        "Produit 1", "Produit 2", "Produit 3"
    ));
    @Mapping("/products")
    public View getProducts() {
        // Logic metier 
        return new View("productList", "productList", this.productList); // ici le nom de la vue dans le dossier webapps
    }

    @Mapping("/products/{id}")
    public View getProduct(int index) {
        // Logic metier 
        return new View("product", "product", this.productList.get(index)); // ici le nom de la vue dans le dossier webapps
    }

    @Mapping("/categories")
    public View getCategorie() {
        // Logic metier 
        return new View("productCategorie", "/categorie" ); // ici le nom de la vue dans le dossier webapps
    }

    // Nouvelle méthode qui reçoit productName depuis un POST et construit une Map
    
    @Mapping(value = "/products/add", method = "POST")
    public View addProduct(Map<String, Object> formData) {
        String productName = (String) formData.get("productName");
        
        if (productName != null && !productName.trim().isEmpty()) {
            this.productList.add(productName.trim());
        }
        
        return new View("productList", "productList", this.productList);
    }
}