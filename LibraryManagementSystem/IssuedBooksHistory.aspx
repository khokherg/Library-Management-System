<%@ Page Title="" Language="C#" MasterPageFile="~/MemberHomePageMaster.Master" AutoEventWireup="true" CodeBehind="IssuedBooksHistory.aspx.cs" Inherits="LibraryManagementSystem.IssuedBooksHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderMember" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderMember" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderMember" runat="server">
<br />
    <br />
    <br />
<br />
    <asp:Label CssClass="lblMember" ID="lblBooksHistory" runat="server"></asp:Label>
    <br />
    <asp:GridView ID="grdIssuedBooksHistory" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceIssuedBooksHistory" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
            <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
            <asp:BoundField DataField="IssuedDate" HeaderText="IssuedDate" SortExpression="IssuedDate" />
        </Columns>
        <EmptyDataRowStyle HorizontalAlign="Center" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceIssuedBooksHistory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT IssuedBooksRecord.UserID, Books.BookName, Books.AuthorName, IssuedBooksRecord.IssuedDate FROM Books INNER JOIN IssuedBooksRecord ON Books.BookID = IssuedBooksRecord.BookID WHERE (IssuedBooksRecord.UserID = @UserID)">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderMember" runat="server">
</asp:Content>
