<%@ Page Title="" Language="C#" MasterPageFile="~/LibrarianHomePageMaster.Master" AutoEventWireup="true" CodeBehind="RequestAcceptPage.aspx.cs" Inherits="LibraryManagementSystem.RequestAcceptPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderLibrarian" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderLibraraian" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderLibraraian" runat="server">
    &nbsp;<asp:SqlDataSource ID="SqlDataSourceAcceptRequest" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Status, UserID FROM RequestedBooksRecord WHERE (Status = 'RP')" UpdateCommand="UPDATE RequestedBooksRecord SET Status = @Status WHERE (UserID = @UserID)">
        <UpdateParameters>
            <asp:Parameter Name="Status" />
            <asp:Parameter Name="UserID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridViewAcceptRequest" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAcceptRequest" BorderColor="Black" Caption="Accept Requests" CaptionAlign="Top" Height="43px" HorizontalAlign="Center" Width="395px">
        <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                     <asp:DropDownList ID="drpRequestEditStatus" SelectedValue='<%# Bind("Status") %>' runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>RP</asp:ListItem>
                  <asp:ListItem>RC</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequestEditStatusRequiredFieldValidator" runat="server" ErrorMessage="Pleae select Request Status " Text="*"  ForeColor="Yellow" ControlToValidate="drpRequestEditStatus" InitialValue="Select Status"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
        </Columns>
        <EmptyDataRowStyle HorizontalAlign="Center" />
        <EmptyDataTemplate>
            There are no pending requests
        </EmptyDataTemplate>
        <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderLibrarian" runat="server">
</asp:Content>
