<%--//   Apply.aspx version 1.0
//   =================================
//   Copyright (C) 2010  yang haichuan
//   作者： 杨海川 
//   Email: yanghaichuan@live.cn
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Master/main.master" AutoEventWireup="true" CodeFile="Apply.aspx.cs" Inherits="assistant_Apply" meta:resourcekey="PageResource1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <title>注册</title>
    <link rel="stylesheet" href="../Styles/login.css" type="text/css" media="screen" />
    <script type="text/javascript">
        if (top.location != self.location) { top.location = self.location; }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

    <div id="login"  >
        <p>
            <asp:Label runat="server" ID="label" for="TextBoxID" 
                style="display:block; margin:3px 0;" class="small" 
                meta:resourcekey="labelResource1">用户ID:</asp:Label>
            <asp:TextBox ID="TextBoxID"  runat="server" Width="200px" CssClass="text" 
                meta:resourcekey="TextBoxIDResource1"></asp:TextBox>
        </p>
        <p>
            <asp:Label runat="server" ID="label1" for="TextBoxPwd" 
                style="display:block;margin:3px 0;" class="small " 
                meta:resourcekey="label1Resource1">密码:</asp:Label>
            <asp:TextBox ID="TextBoxPwd" TextMode="Password" runat="server" Width="200px"  
                CssClass="text" meta:resourcekey="TextBoxPwdResource1"></asp:TextBox>
        </p>
        <p>
            <asp:Label runat="server" ID="label2" for="TextBoxRePwd" 
                style="display:block;margin:3px 0;" class="small " 
                meta:resourcekey="label2Resource1">密码确认:</asp:Label>
            <asp:TextBox ID="TextBoxRePwd" TextMode="Password" runat="server" 
                Width="200px"  CssClass="text" meta:resourcekey="TextBoxRePwdResource1"></asp:TextBox>
        </p>

        <p>
            <asp:Label runat="server" ID="label3" for="TextBoxName" 
                style="display:block; margin:3px 0;" class="small" 
                meta:resourcekey="label3Resource1">姓名:</asp:Label>
            <asp:TextBox ID="TextBoxName"  runat="server" Width="200px" CssClass="text" 
                meta:resourcekey="TextBoxNameResource1"></asp:TextBox>
        </p>

        <p>
            <asp:Button ID="ButtonOK" runat="server" Text="注册" onclick="ButtonOK_Click" 
                meta:resourcekey="ButtonOKResource1" />
        </p>
        <p ><asp:Label ID="ErrMessage" runat="server" ForeColor="Red" 
                meta:resourcekey="ErrMessageResource1"></asp:Label></p>
        <p><asp:HyperLink runat="server" ID="home" href="../" class="small" 
                meta:resourcekey="homeResource1">&laquo;返回首页</asp:HyperLink></p>
    </div>
</asp:Content>


