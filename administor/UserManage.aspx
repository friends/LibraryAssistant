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
                    
                    <%# DataBinder.Eval(Container.DataItem, "userId")%></td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "userName")%>
                    </td>
                    <td><a href="UserManage.aspx?operate=delete&userId=<%# DataBinder.Eval(Container.DataItem, "userId")%>" onclick="return confirm('删除作者不会删除作者发表的文章和评论,确定要删除吗?');">删除</a></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</div>
</asp:Content>

