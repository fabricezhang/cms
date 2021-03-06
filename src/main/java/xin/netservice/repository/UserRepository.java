package xin.netservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import xin.netservice.model.UserEntity;

/**
 * Created by z on 2017/1/2.
 */
@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
    @Modifying      // 说明该方法是修改操作
    @Transactional  // 说明该方法是事务性操作
    // 定义查询
    // @Param注解用于提取参数
    @Query("update UserEntity us set us.username=:qUsername, us.firstName=:qFirstName, us.lastName=:qLastName, us.password=:qPassword where us.id=:qId")
    void updateUser(@Param("qUsername") String username, @Param("qFirstName") String firstName,
                           @Param("qLastName") String qLastName, @Param("qPassword") String password, @Param("qId") Integer id);

    UserEntity findByUsername(String nickname);
}
