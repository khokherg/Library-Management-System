<%@ Page Title="" Language="C#" MasterPageFile="~/LibrarianHomePageMaster.Master" AutoEventWireup="true" CodeBehind="SearchBookPage.aspx.cs" Inherits="LibraryManagementSystem.SearchBookPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderLibrarian" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderLibraraian" runat="server">
     <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderLibraraian" runat="server">
  
    <br />
    <br />
    <asp:Label class="lbl" ID="lblBookName" runat="server" Text="Book Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtBookName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="TitleRequiredFieldValidator" runat="server"
    ControlToValidate="txtBookName"
    ErrorMessage="Please enter name of book"></asp:RequiredFieldValidator>
&nbsp;
    <br /> <br />
     <asp:Label class="lbl" ID="lblAuthorName" runat="server" Text="Author Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAuthorName" runat="server"></asp:TextBox>
    <br /> <br />
    <asp:Label  class="lbl" ID="lblPublisherName" runat="server" Text="Publisher Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="txtPublisher" runat="server"></asp:TextBox>
    &nbsp;
    <br /> <br />
    <asp:Label class="lbl" ID="lblCategory" runat="server" Text="Category Name"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
    <br /> <br />
    <asp:Button class="btn" ID="btnSearch" runat="server" Text="Search" />
&nbsp;&nbsp;
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books] WHERE ([BookName] LIKE '%' + @BookName + '%')" DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Books] ([ISBN], [BookName], [PublisherName], [AuthorName], [CategoryName], [QuantityAvailable], [BookDesc], [PublisherID], [AuthorID], [CategoryID], [Status]) VALUES (@ISBN, @BookName, @PublisherName, @AuthorName, @CategoryName, @QuantityAvailable, @BookDesc, @PublisherID, @AuthorID, @CategoryID, @Status)" UpdateCommand="UPDATE [Books] SET [ISBN] = @ISBN, [BookName] = @BookName, [PublisherName] = @PublisherName, [AuthorName] = @AuthorName, [CategoryName] = @CategoryName, [QuantityAvailable] = @QuantityAvailable, [BookDesc] = @BookDesc, [PublisherID] = @PublisherID, [AuthorID] = @AuthorID, [CategoryID] = @CategoryID, [Status] = @Status WHERE [BookID] = @BookID">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="BookName" Type="String" />
            <asp:Parameter Name="PublisherName" Type="String" />
            <asp:Parameter Name="AuthorName" Type="String" />
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="QuantityAvailable" Type="String" />
            <asp:Parameter Name="BookDesc" Type="String" />
            <asp:Parameter Name="PublisherID" Type="Int32" />
            <asp:Parameter Name="AuthorID" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtBookName" Name="BookName" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="BookName" Type="String" />
            <asp:Parameter Name="PublisherName" Type="String" />
            <asp:Parameter Name="AuthorName" Type="String" />
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="QuantityAvailable" Type="String" />
            <asp:Parameter Name="BookDesc" Type="String" />
            <asp:Parameter Name="PublisherID" Type="Int32" />
            <asp:Parameter Name="AuthorID" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="BookID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
            <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
            <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
            <asp:BoundField DataField="QuantityAvailable" HeaderText="QuantityAvailable" SortExpression="QuantityAvailable" />
            <asp:BoundField DataField="BookDesc" HeaderText="BookDesc" SortExpression="BookDesc" />
            <asp:BoundField DataField="PublisherID" HeaderText="PublisherID" SortExpression="PublisherID" />
            <asp:BoundField DataField="AuthorID" HeaderText="AuthorID" SortExpression="AuthorID" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
    </asp:GridView>
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderLibrarian" runat="server">
</asp:Content>
