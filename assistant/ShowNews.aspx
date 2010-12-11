<%--
//   ShowNews.aspx version 1.0
//   =================================
//   Copyright (C) 2010  Xie Xiaojing
//   作者： 谢晓境
//   Email: xxj050@163.com
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================
--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Master/main.master" AutoEventWireup="true" CodeFile="ShowNews.aspx.cs" Inherits="assistant_ShowNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
<div>
    <h2 id="newsTitle" runat="server"></h2>
    发布时间：<span id="time" runat="server"></span>
<p id="content" runat="server"></p>
</div>
    </asp:Content>

