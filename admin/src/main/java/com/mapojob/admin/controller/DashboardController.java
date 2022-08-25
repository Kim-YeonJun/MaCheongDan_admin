package com.mapojob.admin.controller;

import com.mapojob.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class DashboardController {

    @Autowired
    UserService userService;

    @GetMapping("/dashboard")
    public String dashboard(HttpServletRequest request, Model m, HttpSession session) throws Exception {
        if(!loginCheck(request)) {
            return "redirect:/login";
        }

        m.addAttribute("man", userService.getGenderCount("M"));
        m.addAttribute("woman", userService.getGenderCount("F"));

        return "dashboard";
    }

    private boolean loginCheck(HttpServletRequest request) {
        HttpSession session = request.getSession();
        System.out.println("session.getAttribute(\"id\") = " + session.getAttribute("id"));
        boolean result = session.getAttribute("id")!=null;
        if(!result) {
            session.invalidate();
        }
        return result;
    }
}
