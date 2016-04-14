package com.hfut.webproject.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by hpw on 16/4/10.
 */
public class BaseAction extends ActionSupport {
    protected  String name;
    protected  String deploytime;
    protected  String endtime;
    protected  String  cmctext;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDeploytime() {
        return deploytime;
    }

    public void setDeploytime(String deploytime) {
        this.deploytime = deploytime;
    }

    public String getEndtime() {
        return endtime;
    }

    public void setEndtime(String endtime) {
        this.endtime = endtime;
    }

    public String getCmctext() {
        return cmctext;
    }

    public void setCmctext(String cmctext) {
        this.cmctext = cmctext;
    }
}
