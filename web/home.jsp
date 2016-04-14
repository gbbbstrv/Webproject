<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
  String path = request.getContextPath();
%>
<head>
  <title>add</title>

  <link type="text/css" href="css/jquery-ui-1.8.17.custom.css" rel="stylesheet" />
  <link type="text/css" href="css/jquery-ui-timepicker-addon.css" rel="stylesheet" />
    <link type="text/css" href="css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/jquery-ui-1.8.17.custom.min.js"></script>
  <script type="text/javascript" src="js/jquery-ui-timepicker-addon.js"></script>
  <script type="text/javascript" src="js/jquery-ui-timepicker-zh-CN.js"></script>
  <script type="text/javascript">
    $(function () {
      $(".ui_timepicker").datetimepicker({
        //showOn: "button",
        //buttonImage: "./css/images/icon_calendar.gif",
        //buttonImageOnly: true,
        showSecond: true,
        timeFormat: 'hh:mm:ss',
        stepHour: 1,
        stepMinute: 1,
        stepSecond: 1
      })
    })
  </script>
  <link rel="stylesheet" href="css/index.css">
  <link rel="stylesheet" href="css/4.2.0fontawesome/css/font-awesome.min.css">

</head>



<body>
  <h1><text name="ddd"></text> </h1>


    <%--<a href="../webproject/componentlist.action"><strong class=""></strong>add</a>--%>
    <%--<a href="../webproject/detaillist.action"><strong class=""></strong>report</a>--%>
  <div class="tab-top" >
      <ul class="nav nav-tabs" id="main-tab">
          <li class="active"><a href="../webproject/componentlist.action#batch-info" data-toggle="tab"><i class="icon-gift"></i> Add</a></li>
          <li class=""><a href="../webproject/detaillist.action#batch-detail" data-toggle="tab"><i class="icon-th-list"></i> Report</a></li>
      </ul>
  </div>

  <div class="tab-content">

      <!-- ============================ -->
      <!-- batch info -->
      <!-- ============================ -->
      <div class="tab-pane" id="batch-info">

      <s:form action="addDetail" method="post" namespace="/">

    <table align="center" cellSpacing="10" style="border-style:dashed;table-layout:fixed;border-width:0px; border-color:#000000;">
    <tbody>
    <tr widht="500">
      <td width="100" height="25" ><div align="center" style="font-size:20px;">Components：</div></td>
    <td>
    <div>
      <select name="name" id="name" onkeydown="doSearch(arguments[0]||event)"  style="height:31px;width:160px;font-size:20px">
        <s:iterator value="components" id="n"  status="st">
          <option><s:property value="componentName"/></option>
        </s:iterator>
      </select>
    </div>
    </td>
      </tr>
    <tr height="10"/>
    <tr>
      <td width="100" height="25" ><div align="left" style="font-size:20px;">Deploytime：</div></td>
    <td>
      <div>
      <input name="deploytime" id="deploytime" class="ui_timepicker"  type="text" style="width:160px"/>
      </div>
    </td>
    </tr>
    <tr height="10">
    </tr>

    <tr>
      <td width="100" height="25" ><div align="left"  style="font-size:20px;">Deadline：</div></td>
      <td>
        <input name="endtime" id="endtime" class="ui_timepicker"  type="text" style="width:160px"/>
      </td>
    </tr>
    <tr height="10">
    </tr>


    <tr>
      <td width="100" height="25" ><div align="left" style="font-size:20px;">CMC version：</div></td>
      <td>
        <textarea name="cmctext" style="width:200px;height:80px;"></textarea>
      </td>
    </tr>
    <tr height="10">
    </tr>

    <tr >
    <td colspan="3" height="40"><div align="center" style="font-size:20px;">
      <input type="submit" style="font-size:20px;" name="subbtn" value="add" />
    <%--<s:submit value="%{getText('add')}"/>--%>
        <%--<s:submit value="%{getText('cannel')}" name="redirect-action:list" />--%>
      </div>
    </td>

   </tr>
    </tbody>
  </table>
  </s:form>
          </div>


      <div class="tab-pane" id="batch-detail">

      <div class="table">
          <table class="table table-hover table-bordered table-condensed">
              <thead>
              <tr bgcolor="#F7F7F7">

                  <th width="75" ><div align="center">ID</div></th>
                  <th ><div align="center">Components</div></th>
                  <th ><div align="center">Deploy_time</div></th>
                  <th ><div align="center">Deadline</div></th>
                  <th ><div align="center">CMC</div></th>

              </tr>
              </thead>
              <tbody id="site-list" class="tbd">


              <s:iterator value="detaillsit" id="u">
                  <tr class="siteinfo" siteid="700299022" statcutover="INIT" statrename="INIT">
                      <td><div align="center"><s:property value="#u.id"/></div></td>
                      <td><div align="center"><s:property value="#u.componentName"/></div></td>
                      <td><div align="center"><s:property value="#u.deployTime"/></div></td>
                      <td><div align="center"><s:property value="#u.deadline"/></div></td>
                      <td width="400" style="word-break:break-all"><div align="center"><s:property value="#u.cmcVersion"/></div></td>
                          <%--<td><div align="center"><s:a href="find.action?id=%{#u.id}">修改</s:a> --%>
                          <%--<s:a href="delete.action?id=%{#u.id}">删除</s:a></div></td>--%>
                  </tr>
              </s:iterator>
              <tr id="emsg-700299022" class="hide siteemsg">
                  <td colspan="2">&nbsp;</td>
                  <td colspan="12">
                      <p>Cutover: INIT : Initial</p>
                      <p>Rename: INIT : initial</p>
                  </td>
              </tr>

              </tbody>
          </table>
          </div>
      </div>


  </div>






</body>
</html>