<%@ Page Title="" Language="C#" MasterPageFile="~/MemberHomePageMaster.Master" AutoEventWireup="true" CodeBehind="PaidOverduesHistory.aspx.cs" Inherits="LibraryManagementSystem.PaidOverduesHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderMember" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderMember" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderMember" runat="server">
<br />
<br />
<asp:Label ID="lblPaidOverdues" runat="server" CssClass="lblMember" ></asp:Label>
    <br />
    <br />
    <asp:GridView ID="grdPaidOverdues" runat="server" DataSourceID="PaidOverduesSqlDataSource" AutoGenerateColumns="False" DataKeyNames="UserID" BackColor="White"  HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
            <asp:BoundField DataField="IssuedDate" HeaderText="IssuedDate" SortExpression="IssuedDate" />
            <asp:BoundField DataField="ExpectedReturnDate" HeaderText="ExpectedReturnDate" SortExpression="ExpectedReturnDate" />
            <asp:BoundField DataField="ReturnedDate" HeaderText="ReturnedDate" SortExpression="ReturnedDate" />
            <asp:BoundField DataField="Fine" HeaderText="Fine" SortExpression="Fine" />
            <asp:BoundField DataField="IsFinePaid" HeaderText="IsFinePaid" SortExpression="IsFinePaid" />
        </Columns>
        <EmptyDataRowStyle HorizontalAlign="Center" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="PaidOverduesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Users.UserID, Books.BookName, IssuedBooksRecord.IssuedDate, IssuedBooksRecord.ExpectedReturnDate, ReturnedBooksRecord.ReturnedDate, Users.Fine, Users.IsFinePaid FROM Books INNER JOIN ReturnedBooksRecord ON Books.BookID = ReturnedBooksRecord.BookID INNER JOIN Users ON ReturnedBooksRecord.UserID = Users.UserID INNER JOIN IssuedBooksRecord ON Books.BookID = IssuedBooksRecord.BookID AND Users.UserID = IssuedBooksRecord.UserID WHERE (Users.UserID = @UserID) AND (Users.Fine &gt; 0) AND (Users.IsFinePaid = 'Y') AND (Users.IsFinePaid = 'y')">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderMember" runat="server">
</asp:Content>
