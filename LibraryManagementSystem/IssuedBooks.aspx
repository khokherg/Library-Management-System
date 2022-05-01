<%@ Page Title="" Language="C#" MasterPageFile="~/MemberHomePageMaster.Master" AutoEventWireup="true" CodeBehind="IssuedBooks.aspx.cs" Inherits="LibraryManagementSystem.IssuedBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderMember" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderMember" runat="server">
    <br />
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderMember" runat="server">
    
    <asp:Label ID="lblViewIssuedBooks" runat="server" ClientIDMode="Static"></asp:Label>
    <br />
    <asp:DataList ID="DataListIssuedBooks" runat="server" DataSourceID="SqlDataSourceIssuedBooks" OnSelectedIndexChanged="DataListIssuedBooks_SelectedIndexChanged" HorizontalAlign="Center">
        <AlternatingItemStyle BackColor="#FFFFCC" />
        <ItemTemplate>
            UserID:
            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
            BookName:
            <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
            <br />
            IssuedDate:
            <asp:Label ID="IssuedDateLabel" runat="server" Text='<%# Eval("IssuedDate") %>' />
            <br />
            ReturnedDate:
            <asp:Label ID="ReturnedDateLabel" runat="server" Text='<%# Eval("ReturnedDate") %>' />
<br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceIssuedBooks" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT IssuedBooksRecord.UserID, Books.BookName, IssuedBooksRecord.IssuedDate, IssuedBooksRecord.ReturnedDate FROM Books INNER JOIN IssuedBooksRecord ON Books.BookID = IssuedBooksRecord.BookID WHERE (IssuedBooksRecord.UserID = @UserID) AND (IssuedBooksRecord.ReturnedDate IS NULL)">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderMember" runat="server">
</asp:Content>
