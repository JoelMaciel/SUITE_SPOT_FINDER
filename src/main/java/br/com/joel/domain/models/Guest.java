package br.com.joel.domain.models;

import jakarta.persistence.*;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serial;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

@Data
@Entity
public class Guest implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;


    @Id
    @EqualsAndHashCode.Include
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String email;
    private String phone;
    private String nationality;
    @Temporal(TemporalType.DATE)
    private Date dateOfBirth;
    private String documentNumber;

    @OneToMany(mappedBy = "guest")
    private Set<Booking> bookings;

}

