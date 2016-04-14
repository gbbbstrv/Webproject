package com.hfut.webproject.service;

import com.hfut.webproject.model.Detail;

import java.util.List;

/**
 * Created by hpw on 16/4/10.
 */
public interface UserService {


  //copmonentlist
    public List findComponentlist();

    public void addDetail(Detail detail);

    public List findDetail();
}
