package com.mindsprint.sample;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @GetMapping("/hello")
    public String getHello() {
        return "Hello World From Spring Boot";
    }

    @GetMapping("/employee")
    public Employee getEmployee() {
        return new Employee(1,"Rohit","It",625371);
    }
}
