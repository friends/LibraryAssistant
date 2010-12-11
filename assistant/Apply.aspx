<%@ Page Title="" Language="C#" MasterPageFile="~/Master/main.master" AutoEventWireup="true" CodeFile="Apply.aspx.cs" Inherits="assistant_Apply" %>


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
            <label for="TextBoxID" style="display:block; margin:3px 0;" class="small">用户ID:</label>
            <asp:TextBox ID="TextBoxID"  runat="server" Width="200" CssClass="text"></asp:TextBox>
        </p>
        <p>
            <label for="TextBoxPwd" style="display:block;margin:3px 0;" class="small ">密码:</label>
            <asp:TextBox ID="TextBoxPwd" TextMode="password" runat="server" Width="200"  CssClass="text"></asp:TextBox>
        </p>

        <p>
            <label for="TextBoxName" style="display:block; margin:3px 0;" class="small">姓名:</label>
            <asp:TextBox ID="TextBoxName"  runat="server" Width="200" CssClass="text"></asp:TextBox>
        </p>

        <p>
            <asp:Button ID="ButtonOK" runat="server" Text="注册" onclick="ButtonOK_Click" />
        </p>
        <p ><asp:Label ID="ErrMessage" runat="server" ForeColor="Red"></asp:Label></p>
        <p><a href="../" class="small">&laquo;返回首页</a></p>
    </div>
</asp:Content>


