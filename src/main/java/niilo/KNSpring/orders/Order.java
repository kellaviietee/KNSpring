package niilo.KNSpring.orders;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.NoArgsConstructor;
import niilo.KNSpring.customer.Customer;
import niilo.KNSpring.orderLine.OrderLine;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Table(name = "Orders")
@Entity
@NoArgsConstructor
@Data
public class Order {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "order_date")
    @Temporal(TemporalType.TIMESTAMP)
    Date orderDate;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "customer_id", referencedColumnName = "registration_code")
    private Customer customer;
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "order_id", referencedColumnName = "id")
    private List<OrderLine> orderLines;
    public Order(Date orderDate, Customer customer, List<OrderLine> orderLines) {
        this.orderDate = orderDate;
        this.customer = customer;
        this.orderLines = orderLines;
    }
}
