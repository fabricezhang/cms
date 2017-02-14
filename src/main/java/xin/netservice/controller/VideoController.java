package xin.netservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by z on 2017/1/12.
 */
@Controller
public class VideoController {

    @RequestMapping(value = "/video/{id}",method = RequestMethod.GET)
    public String showVideoByID(@PathVariable("id") String id, ModelMap modelMap){
        // 返回给请求页面
        modelMap.addAttribute("videoPath", id);
        return "/client/video";
    }

    @RequestMapping(value = "/video",method = RequestMethod.GET)
    public String showVideo(ModelMap modelMap){
        // 返回给请求页面
        modelMap.addAttribute("videoPath", "p-1-1");
        return "/client/video";
    }
}
