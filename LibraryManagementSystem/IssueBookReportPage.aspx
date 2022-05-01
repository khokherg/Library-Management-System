<%@ Page Title="" Language="C#" MasterPageFile="~/LibrarianHomePageMaster.Master" AutoEventWireup="true" CodeBehind="IssueBookReportPage.aspx.cs" Inherits="LibraryManagementSystem.IssueBookReportPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderLibrarian" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderLibraraian" runat="server">
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderLibraraian" runat="server">
   


    <asp:SqlDataSource ID="SqlDataSourceIssueBookReport" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [IssuedBooksRecord]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceIssueBookReport" BorderColor="Black" BorderStyle="Double" BorderWidth="10px" Caption="Issued Books Report" Font-Italic="False" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="BookID" SortExpression="BookID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="IssuedDate" HeaderText="IssuedDate" SortExpression="IssuedDate" />
            <asp:BoundField DataField="ExpectedReturnDate" HeaderText="ExpectedReturnDate" SortExpression="ExpectedReturnDate" />
        </Columns>
        <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
&nbsp;
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderLibrarian" runat="server">
</asp:Content>
