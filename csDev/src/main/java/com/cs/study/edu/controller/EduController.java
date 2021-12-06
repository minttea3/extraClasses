package com.cs.study.edu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EduController {

    @GetMapping("/edu/edu001")
    public String edu001(Model model) {
        return "edu/edu001";
    }

    @GetMapping("/edu/edu002")
    public String edu002(Model model) {
        return "edu/edu002";
    }

    @GetMapping("/edu/edu003")
    public String edu003(Model model) {
        return "edu/edu003";
    }

    @GetMapping("/edu/edu004")
    public String edu004(Model model) {
        return "edu/edu004";
    }

    @GetMapping("/edu/edu005")
    public String edu005(Model model) {
        return "edu/edu005";
    }

    @GetMapping("/edu/edu006")
    public String edu006(Model model) {
        return "edu/edu006";
    }

    @GetMapping("/edu/edu007")
    public String edu007(Model model) {
        return "edu/edu007";
    }
}
