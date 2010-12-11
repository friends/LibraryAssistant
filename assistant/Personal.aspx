<%--//   Personal.aspx class version 1.0
//   =================================
//   Copyright (C) 2010  yang haichuan
//   作者： 杨海川 
//   Email: yanghaichuan@live.cn
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Master/main.master" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="assistant_Personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
        <asp:Table ID="DutyTable" runat="server" GridLines="Both" BackColor="#CCFFFF" 
            BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="5" 
            CellSpacing="0" Font-Bold="True" Font-Names="微软雅黑" Font-Size="Small">
            <asp:TableRow ID="TableRow1" runat="server">
                <asp:TableCell ID="TableCell1" runat="server">时间\星期</asp:TableCell>
                <asp:TableCell ID="TableCell2" runat="server">星期一</asp:TableCell>
                <asp:TableCell ID="TableCell3" runat="server">星期二</asp:TableCell>
                <asp:TableCell ID="TableCell4" runat="server">星期三</asp:TableCell>
                <asp:TableCell ID="TableCell5" runat="server">星期四</asp:TableCell>
                <asp:TableCell ID="TableCell6" runat="server">星期五</asp:TableCell>
                <asp:TableCell ID="TableCell7" runat="server">星期六</asp:TableCell>
                <asp:TableCell ID="TableCell8" runat="server">星期天</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
</asp:Content>

