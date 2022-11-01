package niilo.KNSpring.orders;

import lombok.AllArgsConstructor;
import niilo.KNSpring.customer.Customer;
import niilo.KNSpring.orderLine.OrderLine;
import niilo.KNSpring.orderLine.OrderLineService;
import niilo.KNSpring.product.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class OrderService {

    @Autowired
    private final OrderRepository orderRepository;

    public List<Order> getAllOrders(){
        return orderRepository.findAll();
    }

    public Order addNewOrder(Order order) {
        return orderRepository.save(order);
    }

    public List<Order> getOrdersSortedByDate() {
        return orderRepository.findByOrderByOrderDateAsc();
    }

    public List<Order> getOrderByProduct(Product product) {
        List<Order> orders = orderRepository.findAll();
        List<Order> ordersWithProduct = new ArrayList<>();
        for (Order order : orders) {
            for (OrderLine orderLine : order.getOrderLines()) {
                if (orderLine.getProduct().equals(product)) {
                    ordersWithProduct.add(order);
                }
            }
        }
        return ordersWithProduct;
    }

    public List<Order> getOrdersByCustomer(Customer customer) {
        List<Order> orders = orderRepository.findAll();
        List<Order> ordersByCustomer = new ArrayList<>();
        for (Order order : orders) {
            if (customer.equals(order.getCustomer())) {
                ordersByCustomer.add(order);
            }
        }
        System.out.println(ordersByCustomer);
        return ordersByCustomer;
    }
}
