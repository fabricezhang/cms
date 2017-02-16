package xin.netservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import xin.netservice.model.ArticleEntity;
import xin.netservice.model.UserEntity;

import java.util.Date;
import java.util.List;

/**
 * Created by z on 2017/1/2.
 */
public interface ArticleRepository extends JpaRepository<ArticleEntity, Integer> {

//    // 修改博文操作
//    @Modifying
//    @Transactional
//    @Query("update ArticleEntity article set article.title=:qTitle, article.userByUserId.id=:qUserId," +
//            " article.content=:qContent, article.pubDate=:qPubDate where article.id=:qId")
//    void updateBlog(@Param("qTitle") String title, @Param("qUserId") int userId, @Param("qContent") String content,
//                    @Param("qPubDate") Date pubDate, @Param("qId") int id);

    List<ArticleEntity> findByUserByUserId(UserEntity userEntity);
    ArticleEntity findById(Integer id);
    List<ArticleEntity> findAllByCourseByCategory_Id(Integer id);
}
