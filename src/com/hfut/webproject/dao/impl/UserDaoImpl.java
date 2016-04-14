package com.hfut.webproject.dao.impl;


import com.hfut.webproject.dao.UserDao;
import com.hfut.webproject.model.Detail;
import com.hfut.webproject.model.model.Detaillist;
import com.hfut.webproject.util.Util;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by hpw on 16/4/10.
 */
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {



//    public User getUser(User user) {
//        Session s = this.getSessionFactory().getCurrentSession();
//        String id = user.getId();
//        String hql = "from User as user where user.id=:n";// from Object
//        Query query = s.createQuery(hql);
//        query.setString("n", id );
//        User u = (User) query.uniqueResult();
//        return u;
//    }



    public List getComponent() {

       return getHibernateTemplate().find("from Component "); }

    public void createDetail(Detail detail) {
        detail.setId(3);
        getHibernateTemplate().save(detail);

    }

    public List getDetail() {
     List<Detail> list=getHibernateTemplate().find("from Detail ");

        List<Detaillist> dl=new ArrayList<Detaillist>();
         for(Detail detaill : list) {
             Detaillist detaillist=new Detaillist();
            detaillist.setId(detaill.getId());
            detaillist.setComponentName(detaill.getComponentName());
            detaillist.setDeployTime(Util.TimestamptoString(detaill.getDeployTime()));
            detaillist.setDeadline(Util.TimestamptoString(detaill.getDeadline()));
            detaillist.setCmcVersion(detaill.getCmcVersion());
             dl.add(detaillist);
        }

        return dl; }




}
