<%@ Page Title="" Language="C#" MasterPageFile="~/MemberHomePageMaster.Master" AutoEventWireup="true" CodeBehind="SearchBookMember.aspx.cs" Inherits="LibraryManagementSystem.SearchBookMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderMember" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderMember" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderMember" runat="server">
   
    <div class="MainDiv">
        &nbsp;<asp:Button CssClass="LibrarianPageButtons" ID="btnSearchByBookMember" runat="server"  OnClick="btnSearchByBook_Click" Text="Search By Book " />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label CssClass="lbl" ID="lblBookNameMember" runat="server" Text="Book Name: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtBookNameMember" runat="server" Height="16px"></asp:TextBox>
    <p>
        &nbsp;<asp:Button CssClass="LibrarianPageButtons" ID="btnSearchByAuthorMember" runat="server" OnClick="btnSearchByAuthor_Click" Text="Search By Author" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label CssClass="lbl" ID="lblAuthorNameMember" runat="server" Text="Author Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtAuthorNameMember" runat="server"></asp:TextBox>
       
&nbsp;</p>
    <p>
        &nbsp;<asp:Button CssClass="LibrarianPageButtons" ID="btnSearchByCategoryMember" runat="server" OnClick="btnSearchByCategory_Click" Text="Search By Category" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label CssClass="lbl" ID="lblCategoryMember" runat="server" Text="Category: "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCategoryMember" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;</p>
    <p>
        &nbsp;<asp:Button CssClass="LibrarianPageButtons" ID="btnSearchByPublisherMember" runat="server" OnClick="btnSearchByPublisher_Click" Text="Search By Publisher" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label CssClass="lbl" ID="lblPublisherNameMember" runat="server" Text="Publisher Name:"></asp:Label>
&nbsp; <asp:TextBox ID="txtPublisherNameMember" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;
        &nbsp;&nbsp;
        &nbsp;&nbsp;
        
        </p>
    <asp:Button cssClass="btnBookSearch" id="btnBookSearchMember" ClientIDMode="Static"  runat="server" Text="Search" OnClick="btnSearch_Click" />
   
        <asp:GridView visible="false" ID="grdBookMember" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceBook" EmptyDataText="No Record Found" HorizontalAlign="Center"  BackColor="White">
            <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
            <Columns>
                <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
                <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
            </Columns>
            <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
         
        <asp:GridView  ID ="grdAuthorMember" runat="server" AutoGenerateColumns="False" visible="false" DataSourceID="SqlDataSourceAuthor" EmptyDataText="No Record Found" HorizontalAlign="Center"  BackColor="White">
            <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
            <Columns>
                <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
                <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
            </Columns>
            <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    
    <p>
        <asp:GridView ID="grdPublisherMember" runat="server" visible="false" AutoGenerateColumns="False" DataSourceID="SqlDataSourcePublisher" EmptyDataText="No Record Found" HorizontalAlign="Center"  BackColor="White">
            <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
            <Columns>
                <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
                <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
            </Columns>
            <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </p>
    <p>
        <asp:GridView ID="grdCategoryMember" runat="server" AutoGenerateColumns="False"  visible="false" DataSourceID="SqlDataSourceCategory"  EmptyDataText="No Record Found" HorizontalAlign="Center"  BackColor="White">
            <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
            <Columns>
                <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
                <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
            </Columns>
            <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </p>
    
        <asp:SqlDataSource ID="SqlDataSourceBook" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT BookName, PublisherName, AuthorName, CategoryName FROM Books WHERE (BookName LIKE '%' + @bookName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtBookNameMember" Name="bookName" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSourceAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT BookName, CategoryName, AuthorName, PublisherName FROM Books WHERE (AuthorName LIKE '%' + @authorName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtAuthorNameMember" Name="authorName" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
   
        <asp:SqlDataSource ID="SqlDataSourcePublisher" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT BookName, CategoryName, AuthorName, PublisherName FROM Books WHERE (PublisherName LIKE '%' + @publisherName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtPublisherNameMember" Name="publisherName" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSourceCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT BookName, CategoryName, AuthorName, PublisherName FROM Books WHERE (CategoryName LIKE '%' + @categoryName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtCategoryMember" Name="categoryName" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    
    </div>
        
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderMember" runat="server">
</asp:Content>
