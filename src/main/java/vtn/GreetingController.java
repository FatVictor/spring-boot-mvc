package vtn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GreetingController {

    @RequestMapping(value = {"/", "/hello"})
    public String index() {
        return "hello";
    }

    @ModelAttribute(value = "author")
    public String getAuthor() {
        return "Victor Nguyen";
    }
}
