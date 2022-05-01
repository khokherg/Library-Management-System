<%@ Page Title="" Language="C#" MasterPageFile="~/LibrarianHomePageMaster.Master" AutoEventWireup="true" CodeBehind="ExtendReturnDatePage.aspx.cs" Inherits="LibraryManagementSystem.ExtendReturnDatePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderLibrarian" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderLibraraian" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderLibraraian" runat="server">
    &nbsp;
    <br />
    <div class="MainDiv">
        <p id="ExtendReturnDateFrame" >
&nbsp;<asp:Label CssClass="lbl" ID="Label1" runat="server" Text="Book ID"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtBookID" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Label CssClass="lbl" ID="Label2" runat="server" Text="UserID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button cssClass="btnLibrarian" ID="btnExtendReturnDate" runat="server" Text="Extend Date" OnClick="btnExtendReturnDate_Click" />
            </p>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderLibrarian" runat="server">
</asp:Content>
