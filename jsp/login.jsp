<%@ page language="java" import="java.util.*,org.top.bean.*,org.top.dao.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>TopReading - 用户登录</title>
<link href="../images/title.jpg" rel="shortcut icon" />
<link href="../css/login/basic.css" rel="stylesheet" type="text/css">
<link href="../css/login/index3.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/login/jquery-1.9.0.min.js"></script> 
<script type="text/javascript" src="../js/login/login.js"></script> 
<script type="text/javascript">
    var isSubForm=false;
	function init(){
		 	}
</script>
</head>
<body onload="init()">
<div class="header wp">
	<div class="logo"><h1><a href="/topreading"><img src="../images/logo.jpg"width="147"height="90" style=vertical-align:middle></a>&nbsp&nbsp用户登录</h1></div>
</div>

<div class="zcenter">
	<% String msg = (String) session.getAttribute("message");
		if (msg != null) {
	%>
	<script language='javascript' type='text/javaScript'> alert("<%=msg%>");</script>
	<%
		session.setAttribute("message", null);
		}
	%>
  <!--login start-->
  <form id="form" name="form" action="../Login" method="post">
	<input type="hidden" id="pid" name="pid" value="0">
	<input type="hidden" id="fid" name="fid" value="0">
	<input type="hidden" id="fidName" name="fidName" value="">
  <div class="zlogin" align="center">
    <table class="zlogin">
      <tbody>
	  <tr>
	  <td class="zl_name table_td1">
	     &nbsp;
	  </td>
      <td class="table_td2">
			<div id="schoolName" style="font-size: 16px;padding-top:5px;padding-bottom: 10px;padding-left: 0px;padding-right: 0px;">
			      <span id="schoolName2">&nbsp;</span>
			</div>
	   </td>
	   <td class="zl_prompt zblue table_td3" style="color:red;padding-left:10px;" id="fidError"></td>
      </tr>
      <tr>
        <td class="zl_name table_td1">用户名：</td>
        <td class="table_td2">
			<input class="zl_input" type="text" name="uid" id="unameId" value="" onfocus="hideError(&#39;nameError&#39;)"></td>
        <td class="zl_prompt zblue table_td3" style="color:red;padding-left:10px;" id="nameError">
			<span id="nameError3"></span>
			<span id="nameError2" style="display: none;">账户不能为为空</span>
		</td>
      </tr>
      <tr class="zl_tr_top18">
        <td class="zl_name table_td1">密码：</td>
        <td class="table_td2">
			<input class="zl_input2" type="password" name="pwd" id="passwordId" value="" onfocus="hideError(&#39;pwdError&#39;)" onkeydown="keydownSubmit(event)"></td>
        <td class="table_td3" style="color:red;padding-left:10px;" id="pwdError">
			<span id="pwdError3"></span>
			<span id="pwdError2" style="display: none;">密码不能为空</span>
		</td>
      </tr>
      <tr class="zl_tr_top18">
        <td class="zl_name">&nbsp;</td>
        <td><table width="100%">
            <tbody><tr class="zl_tr_top0">
              <td class="zl_left">
			   <label class="zl_cursor">
				  <div class="zblue" style="font-size: 12px;color: #2ca4de;">
                      <input type="checkbox" name="autoLogin" value="true">&nbsp;下次自动登录
                  </div>
				  </label>
			   </td>
              <td class="zl_right">
				<div style="font-size: 14px; color: red;text-align: right;"></div>
                <div class="zblue" style="font-size: 12px;"><a href="#">忘记密码?</a></div></td>
            </tr>
          </tbody></table></td>
        <td>&nbsp;</td>
      </tr>
      <tr class="zl_tr_top18">
        <td>&nbsp;</td>
        <td><label class="zl_btn">
            <input class="click_login" type="button" value="登录" onclick="mysubmit(&#39;form&#39;)">
          </label></td>
        <td class="zl_prompt zblue" style=" text-align: left;">
			<a href="register.html" id="joinUserA">注册</a></td>
      </tr>
    </tbody></table>
  </div>
  </form>
  <!--login end-->
</div>
<div class="copy wp">免责说明: TopReading只作于内部学习交流用,不用于商业用途. 所收录免费小说、书友评论、用户上传文字、图片等其他一切内容均属用户个人行为,与开发人员无关.<br>Copyright &#169;2015 <a href="#">topreading.com</a> Beta All Rights Reserved.</div>

</body></html>