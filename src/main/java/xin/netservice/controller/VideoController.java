package xin.netservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by z on 2017/1/12.
 */
@Controller
public class VideoController {

    @RequestMapping(value = "/video")
    public String showVideo() {
        return "/client/video";
    }
}
