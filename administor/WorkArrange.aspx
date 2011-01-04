<%--//   WorkArrange.aspx class version 1.0
//   =================================
//   Copyright (C) 2010  yang haichuan
//   作者： 杨海川 
//   Email: yanghaichuan@live.cn
//   最后修改时间： 2010 - 12 - 11
//   检查者: 谢晓境
//   最后检查时间: 2010 - 12 -11
//   =================================--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Manage.master" AutoEventWireup="true" CodeFile="WorkArrange.aspx.cs" Inherits="administor_WorkArrange" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="assistantID,day,time" 
        DataSourceID="SqlDataSource1" PageSize="20" 
    meta:resourcekey="GridView1Resource1" >
        <Columns>
            <asp:BoundField DataField="assistantID" HeaderText="assistantID" 
                ReadOnly="True" SortExpression="assistantID" 
                meta:resourcekey="BoundFieldResource1" />
            <asp:TemplateField HeaderText="day" meta:resourcekey="TemplateFieldResource1">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        SelectedValue='<%# Bind("day") %>' 
                        meta:resourcekey="DropDownList1Resource1">
                        <asp:ListItem Value="1" meta:resourcekey="ListItemResource1" Selected="True">星期一</asp:ListItem>
                        <asp:ListItem Value="2" meta:resourcekey="ListItemResource2">星期二</asp:ListItem>
                        <asp:ListItem Value="3" meta:resourcekey="ListItemResource3">星期三</asp:ListItem>
                        <asp:ListItem Value="4" meta:resourcekey="ListItemResource4">星期四</asp:ListItem>
                        <asp:ListItem Value="5" meta:resourcekey="ListItemResource5">星期五</asp:ListItem>
                        <asp:ListItem Value="6" meta:resourcekey="ListItemResource6">星期六</asp:ListItem>
                        <asp:ListItem Value="7" meta:resourcekey="ListItemResource7">星期天</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" 
                        Text='<%# decorate(((int)Eval("day"))) %>' 
                        meta:resourcekey="Label1Resource1"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="time" meta:resourcekey="TemplateFieldResource2">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        SelectedValue='<%# Bind("time") %>' 
                        meta:resourcekey="DropDownList2Resource1">
                        <asp:ListItem Value="0" meta:resourcekey="ListItemResource8" Selected="True"></asp:ListItem>
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
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("time") %>' 
                        meta:resourcekey="Label2Resource1"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" 
                meta:resourcekey="CommandFieldResource1" />
            <asp:CommandField ShowDeleteButton="True" 
                meta:resourcekey="CommandFieldResource2" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Text="无排班信息" 
                meta:resourcekey="Label3Resource1"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LASDBConnectionString1 %>" 
        SelectCommand="SELECT * FROM [Duty]" 
        DeleteCommand="DELETE FROM [Duty] WHERE [assistantID] = @original_assistantID AND [day] = @original_day AND [time] = @original_time" 
        InsertCommand="INSERT INTO [Duty] ([assistantID], [day], [time]) VALUES (@assistantID, @day, @time)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE Duty set day=@day,time=@time WHERE [assistantID] = @original_assistantID AND [day] = @original_day AND [time] = @original_time">
        <DeleteParameters>
            <asp:Parameter Name="original_assistantID" Type="String" />
            <asp:Parameter Name="original_day" Type="Int32" />
            <asp:Parameter Name="original_time" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="assistantID" Type="String" />
            <asp:Parameter Name="day" Type="Int32" />
            <asp:Parameter Name="time" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

