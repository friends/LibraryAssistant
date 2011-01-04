<%--//   Login.aspx class version 1.0
//   =================================
//   Copyright (C) 2010  yang haichuan
//   作者： 杨海川 
//   Email: yanghaichuan@live.cn
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="UI_Login" meta:resourcekey="PageResource1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>登录</title>
    <link rel="stylesheet" href="Styles/login.css" type="text/css" media="screen" />
    <script type="text/javascript">
        if (top.location != self.location) { top.location = self.location; }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="login"  >
        <p>
            <asp:Label runat="server" for="txtUserName" 
                style="display:block; margin:3px 0;" class="small" 
                meta:resourcekey="LabelResource1">用户名:</asp:Label>
            <asp:TextBox ID="txtUserName"  runat="server" Width="200px" CssClass="text" 
                meta:resourcekey="txtUserNameResource1"></asp:TextBox>
        </p>
        <p>
            <asp:Label runat="server" for="txtPassword" style="display:block;margin:3px 0;" 
                class="small " meta:resourcekey="LabelResource2">密码:</asp:Label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="200px"  
                CssClass="text" meta:resourcekey="txtPasswordResource1"></asp:TextBox>
        </p>

        <p>
            <asp:CheckBox ID="chkRemember" runat="server" Text="保持登录(一个月)"  
                CssClass="small" meta:resourcekey="chkRememberResource1"/>
        </p>
        <p>
            <asp:Button ID="btnLogin" runat="server"   Text="登录" OnClick="btnLogin_Click" 
                CssClass="button" meta:resourcekey="btnLoginResource1" />
        </p>
        <p ><asp:Label ID="lblMessage" runat="server" ForeColor="Red" 
                meta:resourcekey="lblMessageResource1"></asp:Label></p>
        <p><asp:HyperLink href="../" class="small" runat="server" 
                meta:resourcekey="HyperLinkResource1">&laquo;返回首页</asp:HyperLink></p>
    </div>
    <div  style="  text-align:center; padding:5px 0;" class="small">Powered by <a href="mailto:xxj050@163.com" target="_blank" >Friends</a></div>
    </form>
    <script type="text/javascript">
        document.getElementById('<%=txtUserName.ClientID %>').focus();
    </script> 
</body>
</html>

