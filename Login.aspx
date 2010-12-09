<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="UI_Login" %>
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
            <label for="txtUserName" style="display:block; margin:3px 0;" class="small">用户名:</label>
            <asp:TextBox ID="txtUserName"  runat="server" Width="200" CssClass="text"></asp:TextBox>
        </p>
        <p>
            <label for="txtPassword" style="display:block;margin:3px 0;" class="small ">密码:</label>
            <asp:TextBox ID="txtPassword" TextMode="password" runat="server" Width="200"  CssClass="text"></asp:TextBox>
        </p>

        <p>
            <asp:CheckBox ID="chkRemember" runat="server" Text="保持登录(一个月)"  CssClass="small"/>
        </p>
        <p>
            <asp:Button ID="btnLogin" runat="server"   Text="登录" OnClick="btnLogin_Click" CssClass="button" />
        </p>
        <p ><asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></p>
        <p><a href="../" class="small">&laquo;返回首页</a></p>
    </div>
    <div  style="  text-align:center; padding:5px 0;" class="small">Powered by <a href="mailto:xxj050@163.com" target="_blank" >Friends</a></div>
    </form>
    <script type="text/javascript">
        document.getElementById('<%=txtUserName.ClientID %>').focus();
    </script> 
</body>
</html>

