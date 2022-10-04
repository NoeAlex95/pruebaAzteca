package com.azteca.ejercicio.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/prueba")
public class PruebaController {

    @GetMapping("/mensaje")
    public String mensaje(){
        return "mensaje";
    }

    
}
