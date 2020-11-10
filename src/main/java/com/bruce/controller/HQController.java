package com.bruce.controller;

import com.bruce.bean.HQInfo;
import com.bruce.service.IHQService;
import com.bruce.service.impl.HQService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/hq")
public class HQController {

    @Autowired
    private IHQService hqService;

    @RequestMapping("/findAll")
    public ModelAndView findall(){
        List<HQInfo> all = hqService.findall();
        ModelAndView mv = new ModelAndView();
        mv.addObject("hqinfos", all);
        mv.setViewName("hangqing");
        return mv;
    }

    @RequestMapping("/findFailure")
    public ModelAndView findfailure(){
        List<HQInfo> failure = hqService.findfailure();
        ModelAndView mv = new ModelAndView();
        mv.addObject("hqinfos", failure);
        mv.setViewName("hangqing");
        return mv;
    }

}
