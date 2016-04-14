package com.hfut.webproject.dao;

import com.hfut.webproject.model.Detail;

import java.util.List;

/**
 * Created by hpw on 16/4/10.
 */
public interface UserDao {



    //get component list
    public List getComponent();

    public void createDetail(Detail detail);
    public  List getDetail();

}