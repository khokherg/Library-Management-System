<%@ Page Title="" Language="C#" MasterPageFile="~/MemberHomePageMaster.Master" AutoEventWireup="true" CodeBehind="RequestToReturnBook.aspx.cs" Inherits="LibraryManagementSystem.RequestToReturnBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderMember" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderMember" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderMember" runat="server">
    <p style="font-weight: 700">
        &nbsp;</p>
    <p style="font-weight: 700">
        &nbsp;</p>
    <p style="font-weight: 700">
        <br />
        <asp:Label ID="lblMessage" runat="server" CssClass="lblMember"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="grdReturnRequest" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceReturnRequest" OnSelectedIndexChanged="grdReturnRequest_SelectedIndexChanged" DataKeyNames="BookID" BackColor="White" Caption="Place a Request to Return Book" CaptionAlign="Top" EmptyDataText="No Records Found" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="#FFFFCC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="BookID" HeaderText="BookID" SortExpression="BookID" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                <asp:BoundField DataField="ReturnedDate" HeaderText="ReturnedDate" SortExpression="ReturnedDate" />
            </Columns>
            <EmptyDataRowStyle HorizontalAlign="Center" />
            <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceReturnRequest" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT BookID, UserID, ReturnedDate FROM IssuedBooksRecord WHERE (UserID = @UserID) AND (ReturnedDate IS NULL)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="UserID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderMember" runat="server">
</asp:Content>
