package com.onemanarmy.mms;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
class HelloController {

    @GetMapping("/hello")
    String helloEndpoint() {
        log.info("Hello endpoint called");
        return "Hello World!";
    }
}