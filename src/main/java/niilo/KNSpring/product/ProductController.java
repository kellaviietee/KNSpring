package niilo.KNSpring.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping(path = "/api")
public class ProductController {
    @Autowired
    ProductService productService;

    @GetMapping(path = "/products")
    public List<Product> getAllProducts(){
        return  productService.getAllProducts();
    }

    @PostMapping(path = "/products/add")
    public Product addProduct(@RequestBody Product product){
        return productService.saveProduct(product);
    }
}
