package niilo.KNSpring.orderLine;

import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class OrderLineService {

    @Autowired
    private final OrderLineRepository orderLineRepository;

    public List<OrderLine> getAllOrderLines(){
        return orderLineRepository.findAll();
    }

    public OrderLine addNewOrderLine(OrderLine orderLine){
        return orderLineRepository.save(orderLine);
    }
}
