<%@ Page Title="" Language="C#" MasterPageFile="~/LibrarianHomePageMaster.Master" AutoEventWireup="true"
    CodeBehind="LibrarianHomePage.aspx.cs" Inherits="LibraryManagementSystem.LibrarianHomePage" %>

<%@ MasterType VirtualPath="~/LibrarianHomePageMaster.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderLibrarian" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderLibraraian" runat="server">
     <%--<asp:LinkButton cssClass ="LinkBtnLogOut" OnClick="BtnLogOut_Click" runat="server" ClientIDMode="Static" >Log out</asp:LinkButton>--%>
     <br />
    <asp:Label class="lbl" ID="lblCurrentUserName" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderLibraraian" runat="server">
    
   <div class="MainDiv">

    <br />
<asp:Button cssClass="LibrarianPageButtons"  runat="server" Text="Extend Return Date"  PostBackUrl="~/ExtendReturnDatePage.aspx"  />

    
    <asp:Button cssClass="LibrarianPageButtons" runat="server" 
    Text="Books Report" PostBackUrl="~/BookReportPage.aspx"  />

       <asp:Button cssClass="LibrarianPageButtons" runat="server" Text="Calculate Fine"   PostBackUrl="~/CalculateFinePage.aspx" />
    <br /><br />
    <asp:Button  cssClass="LibrarianPageButtons" ID="btnIssueBook" runat="server"  
    Text="Issue Book" PostBackUrl="~/IssueBookPage.aspx"  />
   
    <asp:Button cssClass="LibrarianPageButtons"  runat="server" 
    Text="Return Book" PostBackUrl="~/ReturnBookPage.aspx"  />
       <br /><br />
<asp:Button cssClass="LibrarianPageButtons"  runat="server"  Text="Publisher Report"  PostBackUrl="~/PublisherReportPage.aspx"/>
      
<asp:Button cssClass="LibrarianPageButtons" runat="server" Text="Author Report"   PostBackUrl="~/AuthorReportPage.aspx"/>
   <br /><br />
<asp:Button cssClass="LibrarianPageButtons" runat="server" Text="Category Report"   PostBackUrl="~/CategoryReportPage.aspx"/>

    <asp:Button cssClass="LibrarianPageButtons"  runat="server" Text="Accept Request"   PostBackUrl="~/RequestAcceptPage.aspx"/>
<br /><br />
      <asp:Button cssClass="LibrarianPageButtons"  runat="server" Text="Accept Return Request"  PostBackUrl="~/AcceptReturnRequestPage.aspx"/>

    <asp:Button cssClass="LibrarianPageButtons"  runat="server" 
    Text="Search Book" PostBackUrl="~/SearchBook.aspx"  />
    <br /><br />
<asp:Button cssClass="LibrarianPageButtons" runat="server" Text="Overdue Books"   PostBackUrl="~/OverdueBookReportPage.aspx" />
    <asp:Button  cssClass="LibrarianPageButtons" runat="server" 
    Text="Issued Books Report" PostBackUrl="~/IssueBookReportPage.aspx"  />
       
   </div>
   
</asp:Content>
<asp:Content  ID ="Content4" ContentPlaceHolderID="FooterContentPlaceHolderLibrarian" runat="server" >
</asp:Content>
