package com.mapojob.admin.controller;

import com.mapojob.admin.domain.UserDto;
import com.mapojob.admin.domain.PageHandler;
import com.mapojob.admin.domain.SearchCondition;
import com.mapojob.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    UserService userService;
    @PostMapping("/addemp")
    public String empAdd(UserDto userDto, Model m, HttpServletRequest request, HttpSession session, RedirectAttributes rattr) {
        if(!loginCheck(request)) {
            return "redirect:/login?toURL=" + request.getRequestURL();
        }
        System.out.println("userDto = " + userDto);
        try {
            int rowCnt = userService.addUser(userDto);

            if(rowCnt!=1)
                throw new Exception("Write Failed");

            rattr.addFlashAttribute("msg","WRT_OK");
            return "redirect:/employee/list";
        } catch (Exception e) {
            e.printStackTrace();
            m.addAttribute(userDto);
            m.addAttribute("mode","new");
            m.addAttribute("msg","WRT_ERR");
            return "employee_add";
        }
    }

    @GetMapping("/addemp")
    public String employeeAdd(HttpServletRequest request) {
        if(!loginCheck(request)) {
            return "redirect:/login?toURL=" + request.getRequestURL();
        }
        return "employee_add";
    }

    @PostMapping("/remove")
    public String remove(UserDto userDto, Integer page, Integer pageSize, Model m, HttpServletRequest request, HttpSession session, RedirectAttributes rattr) {
        if (!loginCheck(request)) {
            return "redirect:/login";
        }
        try {
            int rowCnt = userService.removeUser(userDto.getUserId());
            if (rowCnt != 1)
                throw new Exception("Remove Failed");

            m.addAttribute("page", page);
            m.addAttribute("pageSize", pageSize);
            rattr.addFlashAttribute("msg", "DEL_OK");
            return "redirect:/employee/list?page=" + page + "&pageSize=" + pageSize;
        } catch (Exception e) {
            e.printStackTrace();
            m.addAttribute(userDto);
            rattr.addFlashAttribute("msg", "DEL_ERR");
            return "employee_info";
        }
    }

    @PostMapping("/modify")
    public String modify(UserDto userDto, Integer page, Integer pageSize, Model m, HttpServletRequest request, HttpSession session, RedirectAttributes rattr) {

        if (!loginCheck(request)) {
            return "redirect:/login";
        }
        try {
            System.out.println("userDto13123 = " + userDto);
            int rowCnt = userService.setModifyUser(userDto);
            if (rowCnt != 1)
                throw new Exception("Modify Failed");

            m.addAttribute("page", page);
            m.addAttribute("pageSize", pageSize);
            rattr.addFlashAttribute("msg", "MDF_OK");
            return "redirect:/employee/list?page=" + page + "&pageSize=" + pageSize;
        } catch (Exception e) {
            e.printStackTrace();
            m.addAttribute(userDto);
            rattr.addFlashAttribute("msg", "MDF_ERR");
            return "employee_info";
        }
    }
    @GetMapping("/read")
    public String read(String userId, int userNo, Integer page, Integer pageSize
                       , String keyword, String option, Model m
                       , HttpServletRequest request, HttpSession session){
        if(!loginCheck(request)) {
            return "redirect:/login?toURL=" + request.getRequestURL();
        }
        try {
            SearchCondition sc = new SearchCondition(page, pageSize, keyword, option);
            System.out.println("sc.getQueryString() = " + sc.getQueryString());
            UserDto userDto = userService.getSelectUser(userId);
            System.out.println("userDto = " + userDto);
            m.addAttribute(userDto);
            m.addAttribute("page", page);
            m.addAttribute("userNo", userNo);
            m.addAttribute("pageSize", pageSize);
            m.addAttribute("sc", sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "employee_info";
    }

    @GetMapping("/list")
    public String employeeList(SearchCondition sc, Model m, HttpServletRequest request, HttpSession session) {
        if(!loginCheck(request)) {
            return "redirect:/login?toURL=" + request.getRequestURL();
        }
        System.out.println("sc = " + sc);
        try {
            int totalCnt = userService.getSearchResultCnt(sc);
            m.addAttribute("totalCnt", totalCnt);
            PageHandler pageHandler = new PageHandler(totalCnt, sc);
            List<UserDto> list = userService.getSearchResultPage(sc);
            m.addAttribute("list", list);
            m.addAttribute("ph", pageHandler);
            m.addAttribute("userNo", totalCnt + 1 - (sc.getPage()-1) * sc.getPageSize());
            Instant startOfToday = LocalDate.now().atStartOfDay(ZoneId.systemDefault()).toInstant();
            m.addAttribute("startOfToday", startOfToday.toEpochMilli());
        } catch (Exception e) {
            e.printStackTrace();
            m.addAttribute("msg","LIST_ERR");
            m.addAttribute("totalCnt",0);
        }
        return "employee_list";
    }

    private boolean loginCheck(HttpServletRequest request) {
        HttpSession session = request.getSession();
        boolean result = session.getAttribute("id")!=null;
        if(!result) {
            session.invalidate();
        }
        return result;
    }
}
