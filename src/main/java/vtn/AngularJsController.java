package vtn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AngularJsController {

    @RequestMapping("hi")
    public String hi() {
        return "angularjs";
    }
}
