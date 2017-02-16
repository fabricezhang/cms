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

import java.util.List;

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
        List<ArticleEntity> articleEntityList = articleRepository.findAllByCourseByCategory_Id(articleEntity.getCourseByCategory().getId());
        modelMap.addAttribute("article", articleEntity);
        modelMap.addAttribute("articleList",articleEntityList);
        return "/client/article";
    }

    @RequestMapping(value = "/article",method = RequestMethod.GET)
    public String showVideo(ModelMap modelMap){
        // 返回给请求页面
        return "/client/article";
    }

}
