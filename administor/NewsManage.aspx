<%--
//   NewsManage.aspx  version 1.0
//   =================================
//   Copyright (C) 2010  Xie Xiaojing
//   作者： 谢晓境
//   Email: xxj050@163.com
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================
--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Manage.master" AutoEventWireup="true" CodeFile="NewsManage.aspx.cs" Inherits="UI_NewsManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>新闻管理</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>新闻管理</h2>
<div class="left" >
    <table width="100%">
        <tr class="category"> 
            <td>新闻id</td>
            <td style="width:60%;">标题</td>
            <td>操作</td>
        </tr>
        <asp:Repeater ID="newsListRepeater" runat="server">
            <ItemTemplate>
                <tr class="row">
                    <td><%# DataBinder.Eval(Container.DataItem, "newsId")%></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "title")%></td>
                    <td><a href="NewsManage.aspx?operate=delete&newsId=<%# DataBinder.Eval(Container.DataItem, "newsId")%>" onclick="return confirm('确定要删除吗?');">删除</a></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</div>
</asp:Content>

