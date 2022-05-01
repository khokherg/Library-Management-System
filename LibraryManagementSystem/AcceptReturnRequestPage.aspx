<%@ Page Title="" Language="C#" MasterPageFile="~/LibrarianHomePageMaster.Master" AutoEventWireup="true" CodeBehind="AcceptReturnRequestPage.aspx.cs" Inherits="LibraryManagementSystem.AcceptReturnRequestPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderLibrarian" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderLibraraian" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderLibraraian" runat="server">
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSourceAcceptReturnRequest" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Status, UserID FROM ReturnBookRequest WHERE (Status = 'RP')" UpdateCommand="UPDATE ReturnBookRequest SET Status = @Status WHERE (UserID = @UserID)">
        <UpdateParameters>
            <asp:Parameter Name="Status" />
            <asp:Parameter Name="UserID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAcceptReturnRequest" BorderColor="White" BorderStyle="Double" Caption="Book return Requests" CaptionAlign="Top" Height="140px" HorizontalAlign="Center" Width="428px">
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
                     <asp:RequiredFieldValidator ID="RequestEditStatusRequiredFieldValidator" runat="server" ErrorMessage="Pleae select Request Status " Text="*"  ForeColor="Yellow" ControlToValidate="drpRequestEditStatus"
                         InitialValue="Select Status"></asp:RequiredFieldValidator>  </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
        </Columns>
        <EmptyDataRowStyle HorizontalAlign="Center" />
        <EmptyDataTemplate >
            Return Request Completed!!<br />
        </EmptyDataTemplate>
        <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderLibrarian" runat="server">
</asp:Content>
