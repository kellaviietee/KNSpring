package niilo.KNSpring.customer;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "customers")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Customer {

    @Column(name = "registration_code")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer registrationCode;
    @Column(name = "full_name")
    private String fullName;
    @Column(name = "email")
    private String email;
    @Column(name = "telephone")
    private String telephone;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Customer customer = (Customer) o;

        if (!registrationCode.equals(customer.registrationCode)) return false;
        if (!Objects.equals(fullName, customer.fullName)) return false;
        if (!Objects.equals(email, customer.email)) return false;
        return Objects.equals(telephone, customer.telephone);
    }

    @Override
    public int hashCode() {
        int result = registrationCode.hashCode();
        result = 31 * result + (fullName != null ? fullName.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (telephone != null ? telephone.hashCode() : 0);
        return result;
    }
}

