<%@ Page Title="" Language="C#" MasterPageFile="~/MemberHomePageMaster.master" AutoEventWireup="true" CodeBehind="ReturnedBooks.aspx.cs" Inherits="LibraryManagementSystem.ReturnedBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderMember" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderMember" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderMember" runat="server">
    <asp:Label ID="lblReturnedBooks" CssClass="lblMember" runat="server" Text="Returned Books History"></asp:Label>
      <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                UserID:
                <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                <br />
                BookName:
                <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                <br />
                ReturnedDate:
                <asp:Label ID="ReturnedDateLabel" runat="server" Text='<%# Eval("ReturnedDate") %>' />
                <br />
<br />
            </ItemTemplate>
            <AlternatingItemStyle BackColor="#FFFFCC" />
           <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ReturnedBooksRecord.UserID, Books.BookName, ReturnedBooksRecord.ReturnedDate FROM ReturnedBooksRecord INNER JOIN Books ON ReturnedBooksRecord.BookID = Books.BookID WHERE (ReturnedBooksRecord.UserID = @userID) AND (ReturnedBooksRecord.ReturnedDate IS NOT NULL)">
            <SelectParameters>
                <asp:SessionParameter Name="userID" SessionField="UserID" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderMember" runat="server">
</asp:Content>
