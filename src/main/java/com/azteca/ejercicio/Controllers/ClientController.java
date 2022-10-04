package com.azteca.ejercicio.Controllers;

// import java.text.SimpleDateFormat;
// import java.util.Arrays;
// import java.util.HashMap;
import java.util.List;
// import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
// import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.azteca.ejercicio.Models.Client;
import com.azteca.ejercicio.Repository.ClientRepository;

@Controller
@RequestMapping("/client")
public class ClientController {

    @Autowired
    ClientRepository clientRepo;

    @GetMapping("/list")
    public ModelAndView clients(){
        List<Client> allClients = clientRepo.findAll();
        // System.out.println(allClients);
        return new ModelAndView("client/list","clients",allClients);
    }

    @GetMapping("/register")
    public String showForm(Model model) {
        Client client = new Client();
        model.addAttribute("client", client);  //,client
        System.out.println(model);
        return "client/register_form";
    }

    @PostMapping("/registerClient")
    public String submitForm(@ModelAttribute("client")  Client client){//Map<String,Object> dataClient) {
        // Client client = new Client();
        //SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        try{
            System.out.println(client);
            clientRepo.save(client);  
        }catch(Exception excli){
            System.out.println(excli);
        }
     
        return "client/register_success";
    }

    @GetMapping("/delete/{idClient}")
    public String deleteClient(@PathVariable Long idClient,@ModelAttribute("client")  Client client){
        Client clientD = clientRepo.getById(idClient);
        clientRepo.delete(clientD);
        return "client/delete";
    }

    @GetMapping("update/{idClient}")
    public String updateClient(@PathVariable Long idClient, Model model){
        Client client = clientRepo.getById(idClient);
        model.addAttribute("id", idClient);
        model.addAttribute("command", client);
        return "client/update";
    }

    @PostMapping("updateC/{idClient}")
    public String updateC(@PathVariable Long idClient,@ModelAttribute("client")  Client client){
        Client clientU = clientRepo.getById(idClient);
        clientU.setNombre(client.getNombre());
        clientU.setCorreo(client.getCorreo());
        clientU.setFecha_nacimiento(client.getFecha_nacimiento());
        clientU.setCelular(client.getCelular());
        clientRepo.save(clientU);
        return "client/register_success";
    }

    
}
