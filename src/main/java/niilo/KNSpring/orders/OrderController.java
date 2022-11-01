package niilo.KNSpring.orders;

import niilo.KNSpring.customer.CustomerService;
import niilo.KNSpring.orderLine.OrderLine;
import niilo.KNSpring.product.Product;
import niilo.KNSpring.product.ProductService;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping(path = "/api")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @GetMapping(path = "/orders")
    public List<Order> getAllOrders() {
        return orderService.getAllOrders();
    }

    @PostMapping(path = "/orders/add")
    public Order addNewOrder(@RequestBody Order order) {
        return orderService.addNewOrder(order);
    }

    @GetMapping(path = "/orders/sorted")
    public List<Order> getOrdersSortedByDate() {
        return orderService.getOrdersSortedByDate();
    }

    @GetMapping(path = "/orders/product")
    public Order getOrderByProduct(@RequestBody Product product) {
        return orderService.getOrderByProduct(product);
    }


}