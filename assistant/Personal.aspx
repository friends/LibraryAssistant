<%--
//   Personal.aspx class version 1.0
//   =================================
//   Copyright (C) 2010  friends
//   作者： 杨海川 谢晓境
//   Email: yanghaichuan@live.cn
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================
--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Master/main.master" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="assistant_Personal" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style  type="text/css">
.table
{
    clear:both;
    float:left;
    margin:5px 10px;
}
.news
{
    float:right;
    margin:10px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
        <div class="table">
        <asp:Table ID="DutyTable" runat="server" GridLines="Both" BackColor="#CCFFFF" 
            BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="5" 
            CellSpacing="0" Font-Bold="True" Font-Names="微软雅黑" Font-Size="Small" 
                Width="800px" meta:resourcekey="DutyTableResource1">
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
    </div>
    <div class="news">
    <asp:DataList ID="DataList1" runat="server" 
    DataSourceID="SqlDataSource_News" CellPadding="4" ForeColor="#333333" 
            Width="250px" meta:resourcekey="DataList1Resource1">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#CCFFFF" Font-Bold="True" ForeColor="Black" />
        <HeaderStyle BackColor="#CCFFFF" Font-Bold="True" ForeColor="Black" />
        <HeaderTemplate>
            <h3><asp:Label runat="server" ID="label" meta:resourcekey="labelResource1">助理新闻</asp:Label></h3>
        </HeaderTemplate>
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
<br />
            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("title") %>'  Target="_blank"
                NavigateUrl='<%# "../assistant/ShowNews.aspx?newsId="+Eval("newsId") %>' 
                meta:resourcekey="HyperLink1Resource1"></asp:HyperLink>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
        
<asp:SqlDataSource ID="SqlDataSource_News" runat="server" 
    ConnectionString="<%$ ConnectionStrings:LASDBConnectionString1 %>" 
    SelectCommand="SELECT TOP (4) title, newsId FROM News WHERE (type = @type)">
    <SelectParameters>
        <asp:Parameter DefaultValue="0" Name="type" Type="Int32" />
    </SelectParameters>
        </asp:SqlDataSource>
        <br /><br />
        <asp:DataList ID="DataList2" runat="server" 
    DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" 
            Width="250px" meta:resourcekey="DataList2Resource1">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#CCFFFF" Font-Bold="True" ForeColor="Black" />
        <HeaderStyle BackColor="#CCFFFF" Font-Bold="True" ForeColor="Black" />
        <HeaderTemplate>
            <h3>助理风采</h3>
        </HeaderTemplate>
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
<br />
            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("title") %>'  Target="_blank"
                NavigateUrl='<%# "../assistant/ShowNews.aspx?newsId="+Eval("newsId") %>' 
                meta:resourcekey="HyperLink1Resource2"></asp:HyperLink>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
        
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:LASDBConnectionString1 %>" 
    SelectCommand="SELECT TOP (4) title, newsId FROM News WHERE (type = @type)">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="type" Type="Int32" />
    </SelectParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>

