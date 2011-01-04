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
<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Manage.master" AutoEventWireup="true" CodeFile="UserManage.aspx.cs" Inherits="UI_UserManage" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>用户管理</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2><asp:Label runat="server" ID="label" meta:resourcekey="labelResource1">用户管理</asp:Label></h2>
<div class="left" >
    <table width="100%">
        <tr class="category">
            <td><asp:Label runat="server" ID="label1" meta:resourcekey="label1Resource1">用户ID</asp:Label></td>
            <td><asp:Label runat="server" ID="label2" meta:resourcekey="label2Resource1">用户名</asp:Label></td>
            <td><asp:Label runat="server" ID="label3" meta:resourcekey="label3Resource1">操作</asp:Label></td>
        </tr>
        <asp:Repeater ID="userlistRepeater" runat="server">
            <ItemTemplate>
                <tr class="row">                 
                    <td>
                    
                    <%# DataBinder.Eval(Container.DataItem, "ID")%></td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "name")%>
                    </td>
                    <td><a href='UserManage.aspx?operate=delete&amp;id=<%# DataBinder.Eval(Container.DataItem, "id") %>' 
                            onclick="return confirm('确定要删除吗?');"><asp:Label runat="server" ID="label3" 
                            meta:resourcekey="label3Resource2">删除</asp:Label></a></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</div>
</asp:Content>

