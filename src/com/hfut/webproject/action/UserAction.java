package com.hfut.webproject.action;

import com.hfut.webproject.model.Component;
import com.hfut.webproject.model.Detail;
import com.hfut.webproject.model.model.Detaillist;
import com.hfut.webproject.service.UserService;
import com.hfut.webproject.util.Util;


import java.util.List;

/**
 * Created by hpw on 16/4/10.
 */
public class UserAction extends  BaseAction  {


    private UserService userService;
    private List users;
    private String  id;


    public List<Component> components;
    public List<String> comlist;
    private List<Detaillist> detaillsit;

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }


    public List<Detaillist> getDetaillsit() {
        return detaillsit;
    }

    public void setDetaillsit(List<Detaillist> detaillsit) {
        this.detaillsit = detaillsit;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }






    //component

    public String componentlist(){
        System.out.println("131232");
        this.components= userService.findComponentlist();
        this.detaillsit = userService.findDetail();
        System.out.println(detaillsit.get(9).getCmcVersion());
//        for(Component value:components)    {
//            this.comlist.add(value.getComponentName());
//        }
//        System.out.println(comlist);

        return "list";
    }

    public String addDetail(){
        Detail det=new Detail();
        System.out.println(name+"-"+deploytime+"-"+endtime+"-"+cmctext);
        Util.StringtoTimestamp(deploytime);
        det.setId(1);
        det.setCmcVersion(cmctext);
        det.setComponentName(name);
        det.setDeployTime(Util.StringtoTimestamp(deploytime));
        det.setDeadline(Util.StringtoTimestamp(endtime));
        userService.addDetail(det);
        return SUCCESS;
    }

    public String list(){

        this.detaillsit = userService.findDetail();
        System.out.println(detaillsit.get(10).getComponentName());
//        System.out.println(Util.TimestamptoString(detaillsit.get(0).getDeployTime())+""+detaillsit.get(3).getDeployTime());
        return "list";
    }


}