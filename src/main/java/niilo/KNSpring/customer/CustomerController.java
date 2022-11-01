package niilo.KNSpring.customer;

import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@AllArgsConstructor
@RequestMapping(path = "/api")
public class CustomerController {

    @Autowired
    CustomerService customerService;

    @GetMapping(path = "/customers")
    public List<Customer> getAllCustomers() {
        return  customerService.getAllCustomers();
    }

    @PostMapping(path = "/customers/add")
    public Customer addNewCustomer(@RequestBody Customer customer) {
        return customerService.addNewCustomer(customer);
    }
}
