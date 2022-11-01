package niilo.KNSpring.orders;

import lombok.AllArgsConstructor;
import niilo.KNSpring.orderLine.OrderLine;
import niilo.KNSpring.orderLine.OrderLineService;
import niilo.KNSpring.product.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    public Order getOrderByProduct(Product product) {
        List<Order> orders = orderRepository.findAll();
        Order rightOrder = null;
        for (Order order : orders) {
            for (OrderLine orderLine : order.getOrderLines()) {
                if (orderLine.getProduct().equals(product)) {
                    rightOrder = order;
                    break;
                }
            }
        }
        return rightOrder;
    }
}
