package com.onemanarmy.mms;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
class HelloController {

    @GetMapping("/hello")
    String helloEndpoint() {
        return "Hello World!";
    }
}
