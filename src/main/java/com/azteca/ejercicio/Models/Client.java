package com.azteca.ejercicio.Models;

// import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "cliente")
public class Client {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id_client;

    private String nombre;
    private String fecha_nacimiento;
    private Integer celular;
    private String correo;
    
    public Client() {
    }

    public Client(Long id_client, String nombre, String fecha_nacimiento, Integer celular, String correo) {
        this.id_client = id_client;
        this.nombre = nombre;
        this.fecha_nacimiento = fecha_nacimiento;
        this.celular = celular;
        this.correo = correo;
    }

    public Long getId_client() {
        return id_client;
    }

    public void setId_client(Long id_client) {
        this.id_client = id_client;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public Integer getCelular() {
        return celular;
    }

    public void setCelular(Integer celular) {
        this.celular = celular;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    @Override
    public String toString() {
        return "Client [id_client=" + id_client + ", nombre=" + nombre + ", fecha_nacimiento=" + fecha_nacimiento
                + ", celular=" + celular + ", correo=" + correo + "]";
    }

}
