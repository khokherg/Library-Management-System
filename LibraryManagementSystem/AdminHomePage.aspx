<%@ Page Title="" Language="C#" MasterPageFile="~/LMS.master" AutoEventWireup="true"  CodeBehind="AdminHomePage.aspx.cs"
    Inherits="LibraryManagementSystem.AdminHomePage"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">Library Management System
    <style type="text/css">
        .buttons {
            margin-left: 0px;
        } 
    </style>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
     <asp:LinkButton cssClass ="LinkBtnLogOut" OnClick="BtnLogOut_Click" runat="server" ClientIDMode="Static" >Log out</asp:LinkButton>
    <asp:Label ID="lblCurrentUserName" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    
    <div Class="MainDiv">
        <div id="AdminHomePageFrame">
    <asp:Button cssclass="btnAdminHomePage" ID="btnViewRequests" runat="server" Text="Account Deletion Requests |" PostBackUrl="~/AccountDeletionRequests.aspx" />
   <asp:Button cssclass="btnAdminHomePage" ID="btnBook0" runat="server" Text="Librarian Perspective |" PostBackUrl="~/LibrarianHomePage.aspx"   />
   
<asp:Button cssclass="btnAdminHomePage" ID="btnPublisher" runat="server" Text="Publisher Information |" PostBackUrl="~/Publisher.aspx"  />

<asp:Button cssclass="btnAdminHomePage" ID="btnCategory" runat="server" Text="Category Information |" PostBackUrl="~/Category.aspx" 
    OnClick="btnCategory_Click" />


<asp:Button cssclass="btnAdminHomePage" ID="btnUsers"
        runat="server" PostBackUrl="~/Users.aspx" Text="Users Information  |"  />
<asp:Button cssclass="btnAdminHomePage" ID="btnAuthor" runat="server" Text="Author Information |" PostBackUrl="~/Author.aspx"  />

    &nbsp;<asp:Button cssclass="btnAdminHomePage" ID="btnBook" runat="server" Text="Book Information |" PostBackUrl="~/Book.aspx"   />
            <%--<asp:Label runat="server">Post an Announcement</asp:Label>
    <textarea id="Announcement"></textarea>
            <asp:Button id="PostAnnouncement" Text="Post" OnClick runat="server"/>--%>
    <asp:LoginName ID="LoginName1" runat="server" />
            
        </div>
        </div>
</asp:Content>
<asp:Content  ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    
</asp:Content>
