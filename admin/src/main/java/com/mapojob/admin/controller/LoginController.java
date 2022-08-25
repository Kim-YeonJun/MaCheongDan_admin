package com.mapojob.admin.controller;

import com.mapojob.admin.domain.UserDto;
import com.mapojob.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;

@Controller
public class LoginController {
    @Autowired
    UserService userService;

    UserDto userDto;

    @GetMapping("/login")
    public String login(HttpServletRequest request) throws Exception {
        if(!loginCheck(request)) {
            return "login";
        }
        return "redirect:/dashboard";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }

    @PostMapping("/login")
    public String login(String id, String pwd, String toURL, boolean remember_me,HttpServletRequest request, HttpServletResponse response) throws Exception {
        if(!loginCheck(id, pwd)) {
            String msg = URLEncoder.encode("id 또는 pwd가 일치하지 않습니다.", "UTF-8");
            return "redirect:/login?msg="+msg;
        }
        HttpSession session = request.getSession();
        session.setAttribute("id", id);
        System.out.println("userDto = " + userDto);
        if(userDto != null) {
            session.setAttribute("name", userDto.getUserName());
            session.setAttribute("auth", userDto.getUserAuthCode());
            session.setAttribute("authName", userDto.getUserAuthName());
        }

        /*if(remember_me) {
            System.out.println("id = " + id);
            Cookie cookie = new Cookie("id", id);
            cookie.setMaxAge(24*60*60);
            response.addCookie(cookie);
        } else {
            Cookie cookie = new Cookie("id", id);
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }*/
        toURL = toURL==null || toURL.equals("") ? "/" : toURL;

        return "redirect:/dashboard";
    }

    public boolean loginCheck(String id, String pwd) {
        try {
            userDto = userService.login(id);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return userDto!=null && userDto.getUserPwd().equals(pwd);
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
