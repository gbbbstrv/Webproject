<%@ page language="java" import="Java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title><s:text name="%{getText('addTitle')}"></s:text></title>
	</head>
	<body>
		<center><font color="red"">
		<h1><s:text name="%{getText('addTitle')}"></s:text> </h1>
		<s:form action="add.action" method="post">
			<s:textfield name="user.userName" label="%{getText('username')}"></s:textfield>
			<s:password name="user.password"  label="%{getText('password')}"></s:password>
			
		<s:submit value="%{getText('submit')}"/> <s:submit value="%{getText('cannel')}" name="redirect-action:list" />
		
		</s:form>
		</font></center>
	</body>
</html>