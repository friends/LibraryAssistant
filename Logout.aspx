﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/main.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Logout" %>

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
       width:150px;
       margin;0 auto;
   }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <div class ="center">
    <h2>您已经安全退出！</h2><br />
    <span><b id="mes" style="color:Red;width:100px; margin:0 auto;">5</b>秒后返回主页！</span>
    </div>
</asp:Content>
