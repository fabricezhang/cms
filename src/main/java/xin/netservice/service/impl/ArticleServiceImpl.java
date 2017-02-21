package xin.netservice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import xin.netservice.model.ArticleEntity;
import xin.netservice.model.UserEntity;
import xin.netservice.repository.ArticleRepository;
import xin.netservice.service.ArticleService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by z on 2017/1/10.
 */
@Service("ArticleService")
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    ArticleRepository articleRepository;

    @Override
    public List<ArticleEntity> QueryArticlesByUserID(UserEntity userEntity){
        List<ArticleEntity> articleList = articleRepository.findByUserByUserId(userEntity);
        return articleList;
    }

    @Override
    public ModelMap GetAllArticlesByCategory(ModelMap modelMap){
        List<ArticleEntity> physicsArticleList = new ArrayList<>();
        List<ArticleEntity> chemistryArticleList = new ArrayList<>();
        List<ArticleEntity> geographyArticleList = new ArrayList<>();
        List<ArticleEntity> biologyArticleList = new ArrayList<>();
        List<ArticleEntity> articleEntityList = articleRepository.findAll();
        for (ArticleEntity articleEntity:articleEntityList) {
            switch (articleEntity.getCourseByCategory().getCourseName()){
                case "Physics":
                    physicsArticleList.add(articleEntity);
                    break;
                case "Biology":
                    biologyArticleList.add(articleEntity);
                    break;
                case "Geography":
                    geographyArticleList.add(articleEntity);
                    break;
                case "Chemistry":
                    chemistryArticleList.add(articleEntity);
                    break;
                default:
                    //drop
                    break;
            }
        }
        modelMap.addAttribute("physicsArticleList",physicsArticleList);
        modelMap.addAttribute("biologyArticleList",biologyArticleList);
        modelMap.addAttribute("geographyArticleList",geographyArticleList);
        modelMap.addAttribute("chemistryArticleList",chemistryArticleList);
        return modelMap;
    }

}
