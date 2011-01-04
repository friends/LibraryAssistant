<%--
//   Logout.aspx class version 1.0
//   =================================
//   Copyright (C) 2010  Xie Xiaojing
//   作者： 谢晓境
//   Email: xxj050@163.com
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================
--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Master/main.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Logout" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>退出</title>
    <script language="javascript" type="text/javascript">
        var i = 5;
        var intervalid;
        intervalid = setInterval("fun()", 1000);
        function fun() {
            if (i == 0) {
                window.location.href = "Default.aspx";
                clearInterval(intervalid);
            }
            document.getElementById("mes").innerHTML = i;
            i--;
        }  
   </script> 
   <style type="text/css">
   .center
   {
       width:200px;
       margin;0 auto;
   }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <div class ="center">
    <h2><asp:Label id="label" runat = "server" meta:resourcekey="labelResource1">您已经安全退出！</asp:Label> </h2><br />
    <asp:Label id="label1" runat = "server" meta:resourcekey="label1Resource1"><b id="mes" style="color:Red;width:200px; margin:0 auto;">5</b>秒后返回主页！</asp:Label>
    </div>
</asp:Content>

