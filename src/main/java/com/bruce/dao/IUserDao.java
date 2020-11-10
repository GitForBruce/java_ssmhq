package com.bruce.dao;

import com.bruce.bean.UserInfo;

public interface IUserDao {

    public UserInfo selectByUserName(String username);

}
