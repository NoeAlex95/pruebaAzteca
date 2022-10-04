package com.azteca.ejercicio.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.azteca.ejercicio.Models.Client;

@Repository
public interface ClientRepository extends JpaRepository<Client, Long>{
    
}
