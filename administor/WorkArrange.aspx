<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Manage.master" AutoEventWireup="true" CodeFile="WorkArrange.aspx.cs" Inherits="administor_WorkArrange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="assistantID,day,time" 
        DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="assistantID" HeaderText="assistantID" 
                ReadOnly="True" SortExpression="assistantID" />
            <asp:TemplateField HeaderText="day">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        SelectedValue='<%# Bind("day") %>'>
                        <asp:ListItem Value="1">星期一</asp:ListItem>
                        <asp:ListItem Value="2">星期二</asp:ListItem>
                        <asp:ListItem Value="3">星期三</asp:ListItem>
                        <asp:ListItem Value="4">星期四</asp:ListItem>
                        <asp:ListItem Value="5">星期五</asp:ListItem>
                        <asp:ListItem Value="6">星期六</asp:ListItem>
                        <asp:ListItem Value="7">星期天</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" 
                        Text='<%# decorate(((int)Eval("day"))) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="time">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        SelectedValue='<%# Bind("time") %>' 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
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
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("time") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceday" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LASDBConnectionString1 %>" 
        onselecting="SqlDataSource1_Selecting" 
        SelectCommand="select distinct day from Duty"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourcetime" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LASDBConnectionString1 %>" 
        SelectCommand="select distinct time from Duty"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LASDBConnectionString1 %>" 
        SelectCommand="SELECT * FROM [Duty]" 
        DeleteCommand="DELETE FROM [Duty] WHERE [assistantID] = @original_assistantID AND [day] = @original_day AND [time] = @original_time" 
        InsertCommand="INSERT INTO [Duty] ([assistantID], [day], [time]) VALUES (@assistantID, @day, @time)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE Duty set day=@day,time=@time WHERE [assistantID] = @original_assistantID">
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

