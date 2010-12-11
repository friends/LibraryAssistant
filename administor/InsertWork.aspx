<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Manage.master" AutoEventWireup="true" CodeFile="InsertWork.aspx.cs" Inherits="administrator_InsertWork" %>


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
            <label style="display:block; margin:3px 0;" class="small">助理ID:</label>
            <asp:DropDownList ID="DropDownListID" Width="200px" runat="server" 
                DataSourceID="SqlDataSourceID" DataTextField="ID" DataValueField="ID"></asp:DropDownList>
        </p>
        <p>
            <label style="display:block;margin:3px 0;" class="small ">星期:</label>
            <asp:DropDownList ID="DropDownListDay" Width="200px" runat="server">
                        <asp:ListItem Value="1">星期一</asp:ListItem>
                        <asp:ListItem Value="2">星期二</asp:ListItem>
                        <asp:ListItem Value="3">星期三</asp:ListItem>
                        <asp:ListItem Value="4">星期四</asp:ListItem>
                        <asp:ListItem Value="5">星期五</asp:ListItem>
                        <asp:ListItem Value="6">星期六</asp:ListItem>
                        <asp:ListItem Value="7">星期天</asp:ListItem>
            </asp:DropDownList>
        </p>

        <p>
            <label style="display:block; margin:3px 0;" class="small">时间:</label>
            <asp:DropDownList ID="DropDownListTime" Width="200px" runat="server">
                        <asp:ListItem Value="0"></asp:ListItem>
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
            </asp:DropDownList>
        </p>

        <p>
            <asp:Button ID="ButtonOK" runat="server" Text="确定" onclick="ButtonOK_Click" />
        </p>
        <p ><asp:Label ID="ErrMessage" runat="server" ForeColor="Red"></asp:Label></p>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceID" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LASDBConnectionString1 %>" 
        SelectCommand="SELECT [ID] FROM [Assistants]"></asp:SqlDataSource>

</asp:Content>


