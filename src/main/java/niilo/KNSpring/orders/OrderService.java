package niilo.KNSpring.orders;

import lombok.AllArgsConstructor;
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
}
