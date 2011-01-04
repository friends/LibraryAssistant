<%--//   Default.aspx class version 1.0
//   =================================
//   Copyright (C) 2010  yang haichuan
//   作者： 杨海川 
//   Email: yanghaichuan@live.cn
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Master/main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
        <asp:Table ID="DutyTable" runat="server" GridLines="Both" BackColor="#CCFFFF" 
            BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="5" 
            CellSpacing="0" Font-Bold="True" Font-Names="微软雅黑" 
    Font-Size="Small" meta:resourcekey="DutyTableResource1">
            <asp:TableRow ID="TableRow1" runat="server" 
                meta:resourcekey="TableRow1Resource1">
                <asp:TableCell ID="TableCell1" runat="server" 
                    meta:resourcekey="TableCell1Resource1">时间\星期</asp:TableCell>
                <asp:TableCell ID="TableCell2" runat="server" 
                    meta:resourcekey="TableCell2Resource1">星期一</asp:TableCell>
                <asp:TableCell ID="TableCell3" runat="server" 
                    meta:resourcekey="TableCell3Resource1">星期二</asp:TableCell>
                <asp:TableCell ID="TableCell4" runat="server" 
                    meta:resourcekey="TableCell4Resource1">星期三</asp:TableCell>
                <asp:TableCell ID="TableCell5" runat="server" 
                    meta:resourcekey="TableCell5Resource1">星期四</asp:TableCell>
                <asp:TableCell ID="TableCell6" runat="server" 
                    meta:resourcekey="TableCell6Resource1">星期五</asp:TableCell>
                <asp:TableCell ID="TableCell7" runat="server" 
                    meta:resourcekey="TableCell7Resource1">星期六</asp:TableCell>
                <asp:TableCell ID="TableCell8" runat="server" 
                    meta:resourcekey="TableCell8Resource1">星期天</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
</asp:Content>

