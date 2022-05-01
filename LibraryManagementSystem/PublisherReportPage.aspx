<%@ Page Title="" Language="C#" MasterPageFile="~/LibrarianHomePageMaster.Master" AutoEventWireup="true" CodeBehind="PublisherReportPage.aspx.cs" Inherits="LibraryManagementSystem.PublisherReportPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderLibrarian" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderLibraraian" runat="server">
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderLibraraian" runat="server">
     
    <asp:SqlDataSource ID="SqlDataSourcePublisherReport" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT PublisherID, PublisherName, Status FROM Publishers WHERE (Status = 'A')" DeleteCommand="DELETE FROM [Publishers] WHERE [PublisherID] = @PublisherID" InsertCommand="INSERT INTO [Publishers] ([PublisherName], [Status]) VALUES (@PublisherName, @Status)" UpdateCommand="UPDATE [Publishers] SET [PublisherName] = @PublisherName, [Status] = @Status WHERE [PublisherID] = @PublisherID">
        <DeleteParameters>
            <asp:Parameter Name="PublisherID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PublisherName" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PublisherName" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="PublisherID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView  ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="PublisherID" DataSourceID="SqlDataSourcePublisherReport" Caption="Publisher Information Report" HorizontalAlign="Center" CaptionAlign="Top" CellPadding="10" Height="295px" Width="526px" BorderColor="Black" BorderStyle="Double" BorderWidth="10px">
        <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
        <Columns>
            <asp:BoundField DataField="PublisherID" HeaderText="PublisherID" InsertVisible="False" ReadOnly="True" SortExpression="PublisherID" />
            <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderLibrarian" runat="server">
</asp:Content>
