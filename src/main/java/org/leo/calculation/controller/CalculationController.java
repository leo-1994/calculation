package org.leo.calculation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author chao.li@quvideo.com
 * @date 2018/7/2 14:05
 */
@Controller
public class CalculationController {

    @GetMapping("/tax")
    public ModelAndView tax() {
        return new ModelAndView("/tax");
    }
}
