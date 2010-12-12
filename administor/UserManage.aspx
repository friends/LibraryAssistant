<%--
//   UserManage.aspx  version 1.0
//   =================================
//   Copyright (C) 2010  Xie Xiaojing
//   作者： 谢晓境
//   Email: xxj050@163.com
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================
--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Manage.master" AutoEventWireup="true" CodeFile="UserManage.aspx.cs" Inherits="UI_UserManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>用户管理</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>用户管理</h2>
<div class="left" >
    <table width="100%">
        <tr class="category">
            <td>用户ID</td>
            <td>用户名</td>
            <td>操作</td>
        </tr>
        <asp:Repeater ID="userlistRepeater" runat="server">
            <ItemTemplate>
                <tr class="row">                 
                    <td>
                    
                    <%# DataBinder.Eval(Container.DataItem, "ID")%></td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "name")%>
                    </td>
                    <td><a href="UserManage.aspx?operate=delete&id=<%# DataBinder.Eval(Container.DataItem, "id")%>" onclick="return confirm('确定要删除吗?');">删除</a></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</div>
</asp:Content>

