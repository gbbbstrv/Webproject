package com.hfut.webproject.service.impl;

import com.hfut.webproject.dao.UserDao;
import com.hfut.webproject.model.Detail;
import com.hfut.webproject.service.UserService;

import java.util.List;

/**
 * Created by hpw on 16/4/10.
 */
public class UserServiceImpl implements UserService{
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }



    // component
    public List findComponentlist() {
        return userDao.getComponent();
    };
    public void addDetail(Detail detail) {
        userDao.createDetail(detail);
    }
    public List findDetail() {
        return userDao.getDetail();
    }



}
