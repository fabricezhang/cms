package xin.netservice.service;

import xin.netservice.model.ArticleEntity;
import xin.netservice.model.UserEntity;

import java.util.List;

/**
 * Created by z on 2017/1/10.
 */
public interface ArticleService {
    List<ArticleEntity> QueryArticlesByUserID(UserEntity userEntity);
}
