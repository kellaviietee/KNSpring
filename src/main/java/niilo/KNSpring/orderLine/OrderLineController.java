package niilo.KNSpring.orderLine;

import lombok.AllArgsConstructor;
import niilo.KNSpring.product.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping(path = "/api")
@AllArgsConstructor
public class OrderLineController {

    @Autowired
    private final OrderLineService orderLineService;
    @Autowired
    private final ProductService productService;
    @GetMapping(path = "/orderlines")
    public List<OrderLine> getAllOrderLines() {
        return orderLineService.getAllOrderLines();
    }

    @PostMapping(path = "/orderlines/add")
    public OrderLine addNewOrderLine(@RequestBody OrderLine orderLine) {
        return orderLineService.addNewOrderLine(orderLine);

    }
}
