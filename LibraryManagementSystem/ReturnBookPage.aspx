<%@ Page Title="" Language="C#" MasterPageFile="~/LibrarianHomePageMaster.Master" AutoEventWireup="true" CodeBehind="ReturnBookPage.aspx.cs" Inherits="LibraryManagementSystem.Return_Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderLibrarian" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderLibraraian" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderLibraraian" runat="server">
    <br /><div class="MainDiv">
       <p id="ReturnBookFrame">
     <asp:Label CssClass="lbl" ID="lblBookID" runat="server" Text="Book ID"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="txtBookID" runat="server" Width="212px" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="BookIDFieldValidator" runat="server"
    ControlToValidate="txtBookID"
    ErrorMessage="Please enter book ID"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label cssclass=lbl ID="Label1" runat="server" Text="User ID"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtUserID" runat="server" Width="209px"></asp:TextBox>
    <br />
    <br />
    <asp:Button CssClass="btnLibrarian" ID="btnReturnBook" runat="server" Text="Return Book" OnClick="BtnReturnBook_Click" />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSourceBook" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Book] WHERE ([Book_id] = @Book_id)" UpdateCommand="UPDATE Book SET Quantity_available = 'Y'">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtBookID" Name="Book_id" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceReturnBook" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO ReturnedBooks(Book_id, User_id, Actual_returned_date, Fine) VALUES (@Book_id, @User_id, GETDATE(), 0)" SelectCommand="SELECT * FROM [ReturnedBooks] WHERE ([Book_id] = @Book_id)">
        <InsertParameters>
            <asp:Parameter Name="Book_id" />
            <asp:Parameter Name="User_id" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtBookID" Name="Book_id" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br /></p></div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderLibrarian" runat="server">
</asp:Content>
