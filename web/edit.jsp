<%@ page language="java" import="Java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title><s:text name="%{getText('editTitle')}"></s:text></title>
	</head>
	<body>
		<center>
			<h1><font color="red"><s:text name="%{getText('editTitle')}"></s:text> </font></h1>
			
			<s:form action="update.action" >			
			
			<s:hidden name="user.id" value="%{user.id}"></s:hidden>
			<s:textfield name="user.userName" label="%{getText('username')}" value="%{user.userName}" ></s:textfield>						
			<s:password name="user.password" label="%{getText('password')}" value="%{user.password}" ></s:password>

			<s:submit value="%{getText('submit')}"></s:submit><s:submit value="%{getText('cannel')}" name="redirect-action:list" ></s:submit>
											
			</s:form>

		</center>
	</body>
</html>