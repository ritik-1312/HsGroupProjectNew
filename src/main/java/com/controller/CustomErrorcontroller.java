package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 @Controller
public class CustomErrorcontroller {
	@RequestMapping("/error404")
    public String handle404Error() {
        return "error"; // Name of your custom error page view
    }
}
