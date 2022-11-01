package niilo.KNSpring.product;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "products")
@NoArgsConstructor
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "product_name")
    private String productName;
    @Column(name = "unit_price")
    private  double unitPrice;
    @Column(name = "sku_code")
    private String skuCode;
}

