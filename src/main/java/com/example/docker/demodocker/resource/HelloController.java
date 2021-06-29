package com.example.docker.demodocker.resource;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("docker/hello")
public class HelloController {

    @GetMapping
    public String hello() {
        return "Hello World Updated";
    }
}
