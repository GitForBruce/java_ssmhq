package com.bruce.service.impl;

import com.bruce.bean.UserInfo;
import com.bruce.dao.IUserDao;
import com.bruce.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService implements IUserService {

    @Autowired
    private IUserDao userDao;

    @Override
    public Boolean login(String username, String password) {
        UserInfo userInfo = userDao.selectByUserName(username);

        if(userInfo != null && password.equals(userInfo.getPassword())){
            System.out.println("true");
            return true;
        }
        else {
            return false;
        }

    }
}
