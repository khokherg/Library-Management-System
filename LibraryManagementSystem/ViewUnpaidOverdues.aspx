<%@ PreviousPageType VirtualPath="~/Login.aspx" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/MemberHomePageMaster.Master" AutoEventWireup="true" CodeBehind="ViewUnpaidOverdues.aspx.cs" Inherits="LibraryManagementSystem.ViewUnpaidOverdues" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderMember" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderMember" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderMember" runat="server">
    <p>
        <asp:Label ID="lblOverdues" CssClass="lblMember" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <br />
        <asp:DataList ID="lstUnpaidOverdues" runat="server" DataSourceID="SqlDataSourceUnpaidOverdues" DataKeyField="UserID" HorizontalAlign="Center">
            <ItemTemplate>
                UserID:
                <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                <br />
                UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />
                BookName:
                <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                <br />
                IssuedDate:
                <asp:Label ID="IssuedDateLabel" runat="server" Text='<%# Eval("IssuedDate") %>' />
                <br />
                ExpectedReturnDate:
                <asp:Label ID="ExpectedReturnDateLabel" runat="server" Text='<%# Eval("ExpectedReturnDate") %>' />
                <br />
                ReturnedDate:
                <asp:Label ID="ReturnedDateLabel" runat="server" Text='<%# Eval("ReturnedDate") %>' />
                <br />
                Fine:
                <asp:Label ID="FineLabel" runat="server" Text='<%# Eval("Fine") %>' />
<br />
                IsFinePaid:
                <asp:Label ID="IsFinePaidLabel" runat="server" Text='<%# Eval("IsFinePaid") %>' />
                <br />
                <br />
            </ItemTemplate>
            
            <AlternatingItemStyle BackColor="#FFFFCC" />
            
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceUnpaidOverdues" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Users.UserID, Users.UserName, Books.BookName, IssuedBooksRecord.IssuedDate, IssuedBooksRecord.ExpectedReturnDate, ReturnedBooksRecord.ReturnedDate, ReturnedBooksRecord.Fine, ReturnedBooksRecord.IsFinePaid FROM Users INNER JOIN IssuedBooksRecord ON Users.UserID = IssuedBooksRecord.UserID INNER JOIN ReturnedBooksRecord ON Users.UserID = ReturnedBooksRecord.UserID INNER JOIN Books ON IssuedBooksRecord.BookID = Books.BookID AND ReturnedBooksRecord.BookID = Books.BookID WHERE (Users.UserID = @UserID) AND (ReturnedBooksRecord.Fine &gt; 0) AND (ReturnedBooksRecord.IsFinePaid = 'N')">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="UserID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderMember" runat="server">
</asp:Content>
