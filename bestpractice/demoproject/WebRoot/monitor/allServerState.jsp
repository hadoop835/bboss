<%
/*
 * <p>Title: ��ط�����״̬</p>
 * <p>Description: �����������Ƿ�����</p>
 * <p>Copyright: Copyright (c) 2008</p>
 * <p>Company: chinacreator</p>
 * @Date 2008-9-8
 * @author gao.tang
 * @version 1.0
 */
 %>
<%@ page session="false" contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.*" %>
<%@page import="com.chinacreator.remote.Utils"%>
<%@page import="org.frameworkset.spi.remote.RPCAddress"%>	
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
<%@ include file="/include/css.jsp"%>
    <title>���з�����״̬��Ϣ</title>

	<script type="text/javascript" languge="Javascript">
	function flushButton(){
		document.location = document.location;
	}
	
	</script>

  </head>
  
  <body class="contentbodymargin" onload="" scroll="no">
	<div style="width:100%;height:100%;overflow:auto">
	<form  name="LogForm"  method="post">
	<table width="100%" height="" border="0" cellpadding="0" cellspacing="1" class="thin">
	<caption>������з�����״̬���<div align="right" ><input type="button" value="ˢ��ҳ��" class="input" onclick="flushButton()"></div></caption>
	<tr>
	<th>��������</th>
	<th>����״̬</th>
	</tr>
	<% 
		List<RPCAddress> servers = Utils.getAppservers();
		int serverC = 1;
		for(int i = 0; i < servers.size(); i++){
			RPCAddress ipAddress = servers.get(i);
			
			String ipPort = ipAddress.toString();
	%>
	<tr>
		<td><strong>server<%=serverC++%>-----<%=ipPort %></strong></td>
		<td><%=Utils.validateAddress(ipAddress)?"OK":"" %></td>
	</tr>
	<% 
		}
	%>
	</table>
	</form>
	</div>
	
	
  </body>
</html>