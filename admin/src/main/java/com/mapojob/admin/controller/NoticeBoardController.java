package com.mapojob.admin.controller;

import com.mapojob.admin.domain.NoticeBoardDto;
import com.mapojob.admin.domain.PageHandler;
import com.mapojob.admin.domain.SearchCondition;
import com.mapojob.admin.service.NoticeBoardService;
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
@RequestMapping("/noticeboard")
public class NoticeBoardController {

    @Autowired
    NoticeBoardService noticeBoardService;


    @GetMapping("/read")
    public String read(Integer bno, Integer page, Integer pageSize
            , String keyword, String option, Model m
            , HttpServletRequest request, HttpSession session){
        if(!loginCheck(request)) {
            return "redirect:/login/login?toURL=" + request.getRequestURL();
        }
        try {
            SearchCondition sc = new SearchCondition(page, pageSize, keyword, option);
            NoticeBoardDto noticeBoardDto = noticeBoardService.read(bno);
            m.addAttribute(noticeBoardDto);
            m.addAttribute("mode","read");
            m.addAttribute("sc", sc);
            m.addAttribute("page", page);
            m.addAttribute("pageSize", pageSize);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "notice_read";
    }

    @GetMapping("/list")
    public String list(SearchCondition sc, Model m
            , HttpServletRequest request, HttpSession session) {
        if(!loginCheck(request)) {
            return "redirect:/login?toURL=" + request.getRequestURL();
        }
        System.out.println("sc = " + sc);
        try {
            int totalCnt = noticeBoardService.getSearchResultCnt(sc);
            m.addAttribute("totalCnt", totalCnt);

            PageHandler pageHandler = new PageHandler(totalCnt, sc);
            List<NoticeBoardDto> list = noticeBoardService.getSearchResultPage(sc);
            m.addAttribute("list", list);
            m.addAttribute("ph", pageHandler);
            Instant startOfToday = LocalDate.now().atStartOfDay(ZoneId.systemDefault()).toInstant();
            m.addAttribute("startOfToday", startOfToday.toEpochMilli());
        } catch (Exception e) {
            e.printStackTrace();
            m.addAttribute("msg","LIST_ERR");
            m.addAttribute("totalCnt",0);
        }
        return "notice_list";
    }

    @PostMapping("/write")
    public String write(NoticeBoardDto noticeBoardDto, Model m, HttpServletRequest request
            , HttpSession session, RedirectAttributes rattr) {

        if(!loginCheck(request)) {
            return "redirect:/login?toURL=" + request.getRequestURL();
        }
        String writer = (String)session.getAttribute("id");
        noticeBoardDto.setWriter(writer);
        String name = (String)session.getAttribute("name");
        noticeBoardDto.setName(name);
        System.out.println("noticeBoardDto = " + noticeBoardDto);
        try {

            int rowCnt = noticeBoardService.write(noticeBoardDto);

            if(rowCnt!=1)
                throw new Exception("Write Failed");

            rattr.addFlashAttribute("msg","WRT_OK");
            return "redirect:/noticeboard/list";
        } catch (Exception e) {
            e.printStackTrace();
            m.addAttribute(noticeBoardDto);
            m.addAttribute("mode","new");
            m.addAttribute("msg","WRT_ERR");
            return "notice_write";
        }
    }

    @GetMapping("/write")
    public String write(HttpServletRequest request) {
        if(!loginCheck(request)) {
            return "redirect:/login?toURL=" + request.getRequestURL();
        }
        return "notice_write";
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
