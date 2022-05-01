<%@ Page Title="" Language="C#" MasterPageFile="~/LibrarianHomePageMaster.Master" AutoEventWireup="true" CodeBehind="IssueBookPage.aspx.cs" Inherits="LibraryManagementSystem.IssueBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderLibrarian" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderLibraraian" runat="server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderLibraraian" runat="server">
    <br />
    <br />
    <div class="MainDiv">
        <p id="IssueBookFrame">
    <asp:Label cssclass="lbl" ID="lblMemberID" runat="server" Text="Member's ID"></asp:Label>
    <asp:TextBox ID="txtMemberID" runat="server" ></asp:TextBox>
    <br />
    <br />
    <asp:Label CssClass="lbl" ID="lblBookID" runat="server" Text="Book ID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtBookID" runat="server" Width="159px" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="BookIDFieldValidator" runat="server"
    ControlToValidate="txtBookID"
    ErrorMessage="Please enter book ID"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <asp:Button CssClass="btnLibrarian" ID="btnIssueBook" runat="server" Text="Issue Book" OnClick="btnIssueBook_Click" />
    <br />
    <br />
            </p>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderLibrarian" runat="server">
    <p>
        <br />
    </p>
</asp:Content>
