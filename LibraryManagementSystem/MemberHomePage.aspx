<%@ PreviousPageType VirtualPath="~/Login.aspx" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/LMS.Master" AutoEventWireup="true" CodeBehind="MemberHomePage.aspx.cs" Inherits="LibraryManagementSystem.MemberHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
    <asp:LinkButton cssClass ="LinkBtnLogOut" OnClick="BtnLogOut_Click" runat="server" ClientIDMode="Static" >Log out</asp:LinkButton>
    <asp:Label ID="lblCurrentUserName" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div class="MainDiv">
    <br /><br />
    <asp:Button cssClass="MemberPageButtons"  runat="server" Text="Search Book" PostBackUrl="~/SearchBookMember.aspx" />
    <asp:Button cssClass="MemberPageButtons"  runat="server" Text="Place a request to issue a book" PostBackUrl="~/RequestToIssue.aspx"  />

<br /><br />
<asp:Button cssClass="MemberPageButtons" runat="server" Text="View Issued Books" PostBackUrl="~/IssuedBooks.aspx"   />

<asp:Button cssClass="MemberPageButtons" runat="server"  Text="History of Paid Overdues" PostBackUrl="~/PaidOverduesHistory.aspx"  />

<br /><br />
<asp:Button cssClass="MemberPageButtons" runat="server" Text="Edit Profile" PostBackUrl="~/EditProfile.aspx"  />

<asp:Button cssClass="MemberPageButtons" runat="server" Text="View Unpaid Overdues" OnClick="btnUnpaidOverdues_Click"   />
<br /><br />
<asp:Button cssClass="MemberPageButtons" runat="server" Text="Return a Book"
    PostBackUrl="~/RequestToReturnBook.aspx"  />

<asp:Button cssClass="MemberPageButtons" runat="server" Text="History of Issued Books" PostBackUrl="~/IssuedBooksHistory.aspx"
   OnClick="btnHistoryOfIssuedBooks_Click"  />
<br /><br />
<asp:Button cssClass="MemberPageButtons" runat="server" Text="Delete Account"
   PostBackUrl="~/RequestToDeleteAccount.aspx"  />

<asp:Button cssClass="MemberPageButtons" runat="server" Text="View Returned Books"
   PostBackUrl="~/ReturnedBooks.aspx" />
 <br /><br />
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
</asp:Content>
