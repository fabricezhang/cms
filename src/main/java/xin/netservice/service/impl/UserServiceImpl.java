package xin.netservice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xin.netservice.model.UserEntity;
import xin.netservice.repository.UserRepository;
import xin.netservice.service.UserService;

/**
 * Created by z on 2017/1/8.
 */
@Service("UserService")
public class UserServiceImpl implements UserService{

    @Autowired
    UserRepository userRepository;

    @Override
    public boolean login(String nickname, String password) {
        try{
            UserEntity userEntity = userRepository.findByUsername(nickname);
            if(userEntity.getPassword().equals(password)){
                return true;
            }else {
                return false;
            }
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public UserEntity findByName(String username){
        try{
            return userRepository.findByUsername(username);
        } catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
