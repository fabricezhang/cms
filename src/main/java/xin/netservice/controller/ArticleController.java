package xin.netservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import xin.netservice.model.ArticleEntity;
import xin.netservice.model.UserEntity;
import xin.netservice.repository.ArticleRepository;
import xin.netservice.repository.UserRepository;
import xin.netservice.service.ArticleService;
import xin.netservice.service.UserService;

import java.util.List;

/**
 * Created by z on 2017/1/2.
 */
@Controller
@SessionAttributes({"username","userID"})
public class ArticleController {

    @Autowired
    ArticleRepository articleRepository;

    @Autowired
    ArticleService articleService;

    @Autowired
    UserService userService;

    @Autowired
    UserRepository userRepository;

    // 查看所有博文
    @RequestMapping(value = "/admin/articles", method = RequestMethod.GET)
    public String showArticles(@ModelAttribute("userID") int userID, ModelMap modelMap) {
        UserEntity userEntity = new UserEntity();
        userEntity.setId(userID);
        List<ArticleEntity> articleList = articleService.QueryArticlesByUserID(userEntity);
        modelMap.addAttribute("articleList", articleList);
        return "admin/articles";
    }

    // Get Add Article Page
    @RequestMapping(value = "/admin/articles/add", method = RequestMethod.GET)
    public String addArticle(@ModelAttribute("username")String username, ModelMap modelMap) {
        UserEntity userEntity =userService.findByName(username);
        modelMap.addAttribute("user", userEntity);
        return "admin/addArticle";
    }

    // Add Article with Post
    @RequestMapping(value = "/admin/articles/addP", method = RequestMethod.POST)
    public String addArticlePost(@ModelAttribute("article") ArticleEntity articleEntity) {
        articleRepository.saveAndFlush(articleEntity);
        return "redirect:/admin/articles";
    }

    // 查看博文详情，默认使用GET方法时，method可以缺省
    @RequestMapping("/admin/articles/show/{id}")
    public String showArticle(@PathVariable("id") int id, ModelMap modelMap) {
        ArticleEntity article = articleRepository.findOne(id);
        modelMap.addAttribute("article", article);
        return "admin/articleDetail";
    }

    // 修改博文内容，页面
    @RequestMapping("/admin/articles/update/{id}")
    public String updateArticle(@PathVariable("id") int id, ModelMap modelMap) {
        // 是不是和上面那个方法很像
        ArticleEntity article = articleRepository.findOne(id);
        List<UserEntity> userList = userRepository.findAll();
        modelMap.addAttribute("article", article);
        modelMap.addAttribute("userList", userList);
        return "admin/updateArticle";
    }

    // 修改博客内容，POST请求
    @RequestMapping(value = "/admin/articles/updateP", method = RequestMethod.POST)
    public String updateArticleP(@ModelAttribute("articleP") ArticleEntity articleEntity) {
        // 更新博客信息
        System.out.println(articleEntity.getTitle());
        articleRepository.updateBlog(articleEntity.getTitle(), articleEntity.getUserByUserId().getId(),
                articleEntity.getContent(), articleEntity.getPubDate(), articleEntity.getId());
        articleRepository.flush();
        return "redirect:/admin/articles";
    }

    // 删除博客文章
    @RequestMapping("/admin/articles/delete/{id}")
    public String deleteArticle(@PathVariable("id") int id) {
        articleRepository.delete(id);
        articleRepository.flush();
        return "redirect:/admin/articles";
    }

}
