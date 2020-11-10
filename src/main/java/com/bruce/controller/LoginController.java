package com.bruce.controller;

import com.bruce.bean.UserInfo;
import com.bruce.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user")
public class LoginController {

    @Autowired
    private IUserService userService;

    // 重定向到登录页
    @GetMapping("/login")
    public String loginPage(){
        return "login";
    }

    @RequestMapping("/login")
    public String login(UserInfo userInfo, HttpServletRequest request, Model model){
        Boolean loginFlag = userService.login(userInfo.getUsername(), userInfo.getPassword());
        if(loginFlag){
            System.out.printf("true");
            model.addAttribute("status", 0);
        }else{
            model.addAttribute("status", 1);
        }
        return "login";

        /**
         * 下面这段代码有问题
         */
        //        if(loginFlag){
//            return "redirect:/hq/findAll";
//        }else{
//            request.setAttribute("message", "用户名或密码错误");
////            return "error";
//            return "forward:/login";
//        }
    }
}

