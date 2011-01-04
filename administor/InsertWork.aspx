<%--//   InsertWork.aspx version 1.0
//   =================================
//   Copyright (C) 2010  yang haichuan
//   作者： 杨海川 
//   Email: yanghaichuan@live.cn
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Manage.master" AutoEventWireup="true" CodeFile="InsertWork.aspx.cs" Inherits="administrator_InsertWork" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <title>注册</title>
    <link rel="stylesheet" href="../Styles/login.css" type="text/css" media="screen" />
    <script type="text/javascript">
        if (top.location != self.location) { top.location = self.location; }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="login"  >
        <p>
            <asp:Label style="display:block; margin:3px 0;" class="small" runat="server" 
                meta:resourcekey="LabelResource1">助理ID:</asp:Label>
            <asp:DropDownList ID="DropDownListID" Width="200px" runat="server" 
                DataSourceID="SqlDataSourceID" DataTextField="ID" DataValueField="ID" 
                meta:resourcekey="DropDownListIDResource1"></asp:DropDownList>
        </p>
        <p>
            <asp:Label  style="display:block;margin:3px 0;" class="small " runat="server" 
                meta:resourcekey="LabelResource2">星期:</asp:Label>
            <asp:DropDownList ID="DropDownListDay" Width="200px" runat="server" 
                meta:resourcekey="DropDownListDayResource1">
                        <asp:ListItem Value="1" meta:resourcekey="ListItemResource1">星期一</asp:ListItem>
                        <asp:ListItem Value="2" meta:resourcekey="ListItemResource2">星期二</asp:ListItem>
                        <asp:ListItem Value="3" meta:resourcekey="ListItemResource3">星期三</asp:ListItem>
                        <asp:ListItem Value="4" meta:resourcekey="ListItemResource4">星期四</asp:ListItem>
                        <asp:ListItem Value="5" meta:resourcekey="ListItemResource5">星期五</asp:ListItem>
                        <asp:ListItem Value="6" meta:resourcekey="ListItemResource6">星期六</asp:ListItem>
                        <asp:ListItem Value="7" meta:resourcekey="ListItemResource7">星期天</asp:ListItem>
            </asp:DropDownList>
        </p>

        <p>
            <asp:Label  style="display:block; margin:3px 0;" class="small" runat="server" 
                meta:resourcekey="LabelResource3">时间:</asp:Label>
            <asp:DropDownList ID="DropDownListTime" Width="200px" runat="server" 
                meta:resourcekey="DropDownListTimeResource1">
                        <asp:ListItem Value="0" meta:resourcekey="ListItemResource8"></asp:ListItem>
                        <asp:ListItem Value="1" meta:resourcekey="ListItemResource9"></asp:ListItem>
                        <asp:ListItem Value="2" meta:resourcekey="ListItemResource10"></asp:ListItem>
                        <asp:ListItem Value="3" meta:resourcekey="ListItemResource11"></asp:ListItem>
                        <asp:ListItem Value="4" meta:resourcekey="ListItemResource12"></asp:ListItem>
                        <asp:ListItem Value="5" meta:resourcekey="ListItemResource13"></asp:ListItem>
                        <asp:ListItem Value="6" meta:resourcekey="ListItemResource14"></asp:ListItem>
                        <asp:ListItem Value="7" meta:resourcekey="ListItemResource15"></asp:ListItem>
                        <asp:ListItem Value="8" meta:resourcekey="ListItemResource16"></asp:ListItem>
                        <asp:ListItem Value="9" meta:resourcekey="ListItemResource17"></asp:ListItem>
            </asp:DropDownList>
        </p>

        <p>
            <asp:Button ID="ButtonOK" runat="server" Text="确定" onclick="ButtonOK_Click" 
                meta:resourcekey="ButtonOKResource1" />
        </p>
        <p ><asp:Label ID="ErrMessage" runat="server" ForeColor="Red" 
                meta:resourcekey="ErrMessageResource1"></asp:Label></p>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceID" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LASDBConnectionString1 %>" 
        SelectCommand="SELECT [ID] FROM [Assistants] WHERE ([ID] &lt;&gt; @ID)">
        <SelectParameters>
            <asp:Parameter DefaultValue="admin" Name="ID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>


