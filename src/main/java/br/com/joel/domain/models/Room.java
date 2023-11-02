package br.com.joel.domain.models;

import jakarta.persistence.*;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serial;
import java.io.Serializable;


@Data
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
public class Room implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @EqualsAndHashCode.Include
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String number;
    private String type;
    private Double pricePerNight;
    private Integer capacity;
    private String roomAmenities;
    private Double size;
    private Integer floor;

    @ManyToOne
    @JoinColumn(name = "hotel_id")
    private Hotel hotel;

}
