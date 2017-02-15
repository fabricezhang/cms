package xin.netservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import xin.netservice.model.ArticleEntity;
import xin.netservice.repository.ArticleRepository;
import xin.netservice.service.ArticleService;

/**
 * Created by z on 2017/2/14.
 */
@Controller
public class ArticleController {

    @Autowired
    ArticleRepository articleRepository;

    @Autowired
    ArticleService articleService;

    @RequestMapping(value = "/article/{id}",method = RequestMethod.GET)
    public String showVideoByID(@PathVariable("id") Integer id, ModelMap modelMap){
        // 返回给请求页面
        ArticleEntity articleEntity = articleRepository.findById(id);
        if(null!=articleEntity){
            modelMap.addAttribute("article", articleEntity);
        } else {
            modelMap.addAttribute("errMsg","未找到对应文件");
            return "redirect:/client/index";
        }
        return "/client/article";
    }

    @RequestMapping(value = "/article",method = RequestMethod.GET)
    public String showVideo(ModelMap modelMap){
        // 返回给请求页面
        return "/client/article";
    }

}
