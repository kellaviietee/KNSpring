package niilo.KNSpring.orderLine;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import niilo.KNSpring.orders.Order;
import niilo.KNSpring.product.Product;
import org.springframework.stereotype.Component;

import javax.persistence.*;

@Component
@Data
@AllArgsConstructor
@Entity
@Table(name = "order_lines")
@NoArgsConstructor
public class OrderLine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @OneToOne(cascade = CascadeType.ALL)
    private Product product;
    @Column(name = "quantity")
    private Integer quantity;
    @JsonIgnore
    @ManyToOne(cascade = CascadeType.ALL)
    private Order order;

    public OrderLine(Product product, Integer quantity) {
        this.product = product;
        this.quantity = quantity;
    }
}
