package xin.netservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by z on 2017/2/14.
 */
@Controller
public class ArticleController {

    @RequestMapping(value = "/article/{id}",method = RequestMethod.GET)
    public String showVideoByID(@PathVariable("id") String id, ModelMap modelMap){
        // 返回给请求页面
        modelMap.addAttribute("videoPath", id);
        return "/client/article";
    }

    @RequestMapping(value = "/article",method = RequestMethod.GET)
    public String showVideo(ModelMap modelMap){
        // 返回给请求页面
        return "/client/article";
    }

}
