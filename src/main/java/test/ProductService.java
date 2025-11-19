package test;

import annotations.Controller;
import annotations.Mapping;
import java.util.List;
import model.View;

@Controller(name="productController")
public class ProductService {
    List<String> productList = List.of("Product1", "Product2", "Product3");

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
}