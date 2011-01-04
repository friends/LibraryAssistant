<%--
//   NewsEdit.aspx  version 1.0
//   =================================
//   Copyright (C) 2010  Xie Xiaojing
//   作者： 谢晓境
//   Email: xxj050@163.com
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================
--%>
<%@ Page Language="C#" MasterPageFile="../Master/Manage.master" AutoEventWireup="true" validateRequest="false"  CodeFile="NewsEdit.aspx.cs" Inherits="admin_postedit" Title="无标题页" meta:resourcekey="PageResource1" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>添加新闻</title>
<link rel="stylesheet" href="../Styles/thickbox.css" type="text/css" media="screen" />
<style type="text/css">
/*tag choose*/
.selected {background:#c00; color:#fff;}

</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label class="label" runat="server" meta:resourcekey="LabelResource1">标题:</asp:Label>
        <asp:TextBox ID="txtTitle"   Width="95%" runat="server" CssClass="text" 
            meta:resourcekey="txtTitleResource1"></asp:TextBox>           
    </p>
    <p>      
        &nbsp;<FCKeditorV2:FCKeditor ID="content" runat="server" Height="400px" 
        Width="100%">
    </FCKeditorV2:FCKeditor>
        <asp:Label class="label gray" runat="server" 
        meta:resourcekey="LabelResource2">提示：Enter产生&lt;p&gt;(换段), Shift+Enter产生&lt;br/&gt;(换行)</asp:Label>
    </p>
    <p>
        <asp:Label class="label" runat="server" meta:resourcekey="LabelResource3">类型：</asp:Label>
        <asp:RadioButtonList ID="typeRadioButtonList" runat="server" RepeatColumns="3" 
            RepeatDirection="Horizontal" 
            meta:resourcekey="typeRadioButtonListResource1">
            <asp:ListItem Value="0" meta:resourcekey="ListItemResource1">通知</asp:ListItem>
            <asp:ListItem Value="1" meta:resourcekey="ListItemResource2">助理风采</asp:ListItem>
        </asp:RadioButtonList>        
    </p>
   <p> <asp:Button ID="btnEdit" runat="server" Text="添加" onclick="btnEdit_Click"  
           CssClass="button" meta:resourcekey="btnEditResource1" /></p>

</asp:Content>

