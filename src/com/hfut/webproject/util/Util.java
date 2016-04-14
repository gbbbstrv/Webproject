package com.hfut.webproject.util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

/**
 * Created by hpw on 16/4/12.
 */
public class Util {

    public static Timestamp StringtoTimestamp(String time){
         if(time.equals("")||time==""||time==null){

             return null;

         }else {

//        Date date1 = new Date();//获取当前时间
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        String str = sdf.format(date1);//时间存储为字符串
//        System.out.println(str);
             return Timestamp.valueOf(time);//转换时间字符串为Timestamp
         }


    }

    public static String TimestamptoString(Timestamp ts) {

        String tsStr = "";

        if(ts==null){

        }else {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            try {
                //方法一
                tsStr = sdf.format(ts);
//            System.out.println(tsStr);
//            //方法二
//            tsStr = ts.toString();
//            System.out.println(tsStr);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return tsStr;
    }

}
