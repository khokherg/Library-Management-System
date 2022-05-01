<%@ Page Title="" Language="C#" MasterPageFile="~/MemberHomePageMaster.Master" AutoEventWireup="true" CodeBehind="RequestToIssue.aspx.cs" Inherits="LibraryManagementSystem.RequestToIssue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderMember" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderMember" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderMember" runat="server">
   <div class="MainDiv">
       <p id="RequestToIssueFrame">
    <asp:Label CssClass="lbl" ID="lblInput" runat="server" Text="Enter a book name:"></asp:Label>
    &nbsp;
    <asp:TextBox ID="txtIssueRequest" runat="server" Height="20px" Width="200px"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;
    <asp:Button cssclass="btnMemberAccountDel" ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
    </p>
    <asp:Label CssClass="lblMember" ID="lblIssueRequest" runat="server"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="grdSelectBook" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSourceSelectBook" OnSelectedIndexChanged="grdSelectBook_SelectedIndexChanged" BackColor="White" EmptyDataText="No Records Found" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#FFFFCC" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
            <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
        </Columns>
        <EmptyDataRowStyle HorizontalAlign="Center" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <asp:GridView ID="grdBookLimit" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSourceBookLimit" BackColor="White" EmptyDataText="No Records Found" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#FFFFCC" />
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="BookLimit" HeaderText="BookLimit" SortExpression="BookLimit" />
        </Columns>
        <EmptyDataRowStyle HorizontalAlign="Center" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSourceBookLimit" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO [Users] ([BookLimit]) VALUES (@BookLimit)" SelectCommand="SELECT [UserID], [BookLimit] FROM [Users] WHERE (([UserID] = @UserID) AND ([BookLimit] &gt; @BookLimit))" UpdateCommand="UPDATE [Users] SET [BookLimit] = @BookLimit WHERE [UserID] = @original_UserID AND (([BookLimit] = @original_BookLimit) OR ([BookLimit] IS NULL AND @original_BookLimit IS NULL))" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @original_UserID AND (([BookLimit] = @original_BookLimit) OR ([BookLimit] IS NULL AND @original_BookLimit IS NULL))" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_UserID" Type="Int32" />
            <asp:Parameter Name="original_BookLimit" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookLimit" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
            <asp:Parameter DefaultValue="0" Name="BookLimit" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookLimit" Type="Int32" />
            <asp:Parameter Name="original_UserID" Type="Int32" />
            <asp:Parameter Name="original_BookLimit" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSourceSelectBook" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @original_BookID AND [BookName] = @original_BookName AND (([AuthorName] = @original_AuthorName) OR ([AuthorName] IS NULL AND @original_AuthorName IS NULL))" InsertCommand="INSERT INTO [Books] ([BookName], [AuthorName]) VALUES (@BookName, @AuthorName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [BookID], [BookName], [AuthorName] FROM [Books] WHERE ([BookName] LIKE '%' + @BookName + '%')" UpdateCommand="UPDATE [Books] SET [BookName] = @BookName, [AuthorName] = @AuthorName WHERE [BookID] = @original_BookID AND [BookName] = @original_BookName AND (([AuthorName] = @original_AuthorName) OR ([AuthorName] IS NULL AND @original_AuthorName IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_BookID" Type="Int32" />
            <asp:Parameter Name="original_BookName" Type="String" />
            <asp:Parameter Name="original_AuthorName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookName" Type="String" />
            <asp:Parameter Name="AuthorName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtIssueRequest" Name="BookName" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookName" Type="String" />
            <asp:Parameter Name="AuthorName" Type="String" />
            <asp:Parameter Name="original_BookID" Type="Int32" />
            <asp:Parameter Name="original_BookName" Type="String" />
            <asp:Parameter Name="original_AuthorName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
       </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderMember" runat="server">
</asp:Content>
