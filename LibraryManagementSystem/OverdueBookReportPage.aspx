<%@ Page Title="" Language="C#" MasterPageFile="~/LibrarianHomePageMaster.Master" AutoEventWireup="true" CodeBehind="OverdueBookReportPage.aspx.cs"
    Inherits="LibraryManagementSystem.OverdueBookReportPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderLibrarian" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderLibraraian" runat="server">
&nbsp;&nbsp;<br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderLibraraian" runat="server">
   
    &nbsp;<br />
    <asp:SqlDataSource ID="SqlDataSourceOverdueBookReport" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT BookID, UserID, IssuedDate, ExpectedReturnDate, ReturnedDate FROM IssuedBooksRecord WHERE (ExpectedReturnDate &lt; GETDATE()) AND (ReturnedDate IS NULL)"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceOverdueBookReport" BorderColor="Black" Caption="Overdue Books Report" CaptionAlign="Top" HorizontalAlign="Center" Font-Size="Medium" >
        <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="BookID" SortExpression="BookID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="IssuedDate" HeaderText="IssuedDate" SortExpression="IssuedDate" />
            <asp:BoundField DataField="ExpectedReturnDate" HeaderText="ExpectedReturnDate" SortExpression="ExpectedReturnDate" />
            <asp:BoundField DataField="ReturnedDate" HeaderText="ReturnedDate" SortExpression="ReturnedDate" />
        </Columns>
        <EmptyDataRowStyle HorizontalAlign="Center" />
        <EmptyDataTemplate>
            There are no overdue books
        </EmptyDataTemplate>
        <FooterStyle BackColor="#990000" BorderColor="Black" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" ForeColor="White" Font-Bold="True" />
    </asp:GridView>
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderLibrarian" runat="server">
</asp:Content>
