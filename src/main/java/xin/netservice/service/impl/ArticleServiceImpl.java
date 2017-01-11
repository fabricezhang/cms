package xin.netservice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xin.netservice.model.ArticleEntity;
import xin.netservice.model.UserEntity;
import xin.netservice.repository.ArticleRepository;
import xin.netservice.service.ArticleService;

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

}
