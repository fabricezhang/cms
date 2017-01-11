package xin.netservice.service;

import xin.netservice.model.UserEntity;

/**
 * Created by z on 2017/1/8.
 */
public interface UserService {
    boolean login(String nickname, String password);
    UserEntity findByName(String nickname);
}
