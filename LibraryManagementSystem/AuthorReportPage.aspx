<%@ Page Title="" Language="C#" MasterPageFile="~/LibrarianHomePageMaster.Master" AutoEventWireup="true" CodeBehind="AuthorReportPage.aspx.cs" Inherits="LibraryManagementSystem.Author" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderLibrarian" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderLibraraian" runat="server">
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderLibraraian" runat="server">
    
    <br />
    
    <br />
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="AuthorID" DataSourceID="SqlDataSourceAuthorReport" BorderColor="Black" BorderStyle="Double" BorderWidth="10px" Caption="Author Information Report" CaptionAlign="Top" HorizontalAlign="Center">
         <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
        <Columns>
            <asp:BoundField DataField="AuthorID" HeaderText="AuthorID" InsertVisible="False" ReadOnly="True" SortExpression="AuthorID" />
            <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" /> 
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
         <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSourceAuthorReport" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [authors]">
        
    </asp:SqlDataSource>
    <br />
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderLibrarian" runat="server">
</asp:Content>
