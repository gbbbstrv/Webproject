<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title><text name="fff"></text></title>
</head>
<body>
<center><font color="red">
  <h1><text name="ddd"></text> </h1>
  <s:form action="add" method="post" namespace="/">
    <s:textfield name="user.userName" label="%{getText('username')}"></s:textfield>
    <s:password name="user.password"  label="%{getText('password')}"></s:password>

    <s:submit value="%{getText('submit')}"/> <s:submit value="%{getText('cannel')}" name="redirect-action:list" />

  </s:form>
  </font></center>
</body>
</html>