package com.onemanarmy.mms;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
class HelloController {
    String helloEndpoint() {
        return "Hello World!";
    }
}
