package com.example.booking;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "🏢 Hello! Welcome to the Meeting Room Booking System!";
    }
}
