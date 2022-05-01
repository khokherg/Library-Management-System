<%@ Page Title="" Language="C#" MasterPageFile="~/MemberHomePageMaster.Master" AutoEventWireup="true" CodeBehind="RequestToDeleteAccount.aspx.cs" Inherits="LibraryManagementSystem.RequestToDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderMember" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderMember" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderMember" runat="server">
    <div class="MainDiv">
    <p id="AccountDeleteFrame">
        <asp:Label ID="lblDeleteRequest" runat="server"></asp:Label>
    
        <asp:Button CssClass="btnMemberAccountDel" ID="btnDeleteAccount" runat="server" OnClick="btnDeleteAccount_Click" Text="Delete Account" />
    </p>
    <p>
        <asp:GridView ID="grdDeleteRequest" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSourceDeleteRequest" BackColor="White" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="#FFFFCC" />
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="IsFinePaid" HeaderText="IsFinePaid" SortExpression="IsFinePaid" />
                <asp:BoundField DataField="ReturnedDate" HeaderText="ReturnedDate" SortExpression="ReturnedDate" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceDeleteRequest" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Users.UserID, Users.UserName, Users.IsFinePaid, IssuedBooksRecord.ReturnedDate FROM Users INNER JOIN IssuedBooksRecord ON Users.UserID = IssuedBooksRecord.UserID WHERE (Users.UserID = @userID) AND (Users.IsFinePaid = 'N') OR (Users.UserID = @userID) AND (IssuedBooksRecord.ReturnedDate IS NULL)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="UserID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
   </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderMember" runat="server">
</asp:Content>
