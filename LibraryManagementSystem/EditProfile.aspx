<%@ Page Title="" Language="C#" MasterPageFile="~/MemberHomePageMaster.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="LibraryManagementSystem.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderMember" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderMember" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderMember" runat="server">
    

    <asp:SqlDataSource ID="SqlDataSourceEditProfile" runat="server"  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @original_UserID AND [UserName] = @original_UserName AND (([UserPassword] = @original_UserPassword) OR ([UserPassword] IS NULL AND @original_UserPassword IS NULL)) AND (([UserEmail] = @original_UserEmail) OR ([UserEmail] IS NULL AND @original_UserEmail IS NULL)) AND (([UserAddress] = @original_UserAddress) OR ([UserAddress] IS NULL AND @original_UserAddress IS NULL))" InsertCommand="INSERT INTO [Users] ([UserName], [UserPassword], [UserEmail], [UserAddress]) VALUES (@UserName, @UserPassword, @UserEmail, @UserAddress)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserID], [UserName], [UserPassword], [UserEmail], [UserAddress] FROM [Users] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [Users] SET [UserPassword] = @UserPassword, [UserEmail] = @UserEmail, [UserAddress] = @UserAddress WHERE [UserID] = @original_UserID AND [UserName] = @original_UserName AND (([UserPassword] = @original_UserPassword) OR ([UserPassword] IS NULL AND @original_UserPassword IS NULL)) AND (([UserEmail] = @original_UserEmail) OR ([UserEmail] IS NULL AND @original_UserEmail IS NULL)) AND (([UserAddress] = @original_UserAddress) OR ([UserAddress] IS NULL AND @original_UserAddress IS NULL))" ConflictDetection="CompareAllValues">
        <DeleteParameters>
            <asp:Parameter Name="original_UserID" Type="Int32" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_UserPassword" Type="String" />
            <asp:Parameter Name="original_UserEmail" Type="String" />
            <asp:Parameter Name="original_UserAddress" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="UserAddress" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserPassword" Type="String" />

            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="UserAddress" Type="String" />
            <asp:Parameter Name="original_UserID" Type="Int32" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_UserPassword" Type="String" />
            <asp:Parameter Name="original_UserEmail" Type="String" />
            <asp:Parameter Name="original_UserAddress" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblEdit" runat="server" ClientIDMode="Static" CssClass="lblMember">Click on Edit to edit your profile. Click on Update to Save Changes.</asp:Label>
    <br />
    <br />
    <asp:DetailsView ID="DetailsViewEditProfile" runat="server" AutoGenerateRows="False" DataKeyNames="UserID" DataSourceID="SqlDataSourceEditProfile" Height="50px" Width="500px" CellPadding="10" CellSpacing="5" BackColor="White" BorderColor="Black" BorderStyle="Double" BorderWidth="10px" Caption="Edit profile" CaptionAlign="Top" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#FFFFCC" />
        <Fields>
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
            <asp:TemplateField HeaderText="UserPassword" SortExpression="UserPassword">
                <EditItemTemplate>
                    <asp:TextBox ID="txtUserPassword" runat="server" Text='<%# Bind("UserPassword") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="UserPasswordRequiredFieldValidator" runat="server" ErrorMessage="Please enter a valid password." Text="*" 
                         ControlToValidate="txtUserPassword" ForeColor="Yellow"></asp:RequiredFieldValidator>
          
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserPassword") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserPassword") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserEmail" SortExpression="UserEmail">
                <EditItemTemplate>
                    <asp:TextBox ID="txtUserEmail" runat="server" Text='<%# Bind("UserEmail") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="UserEmailRequiredFieldValidator" runat="server" 
                         ErrorMessage="Please enter a valid email address." Text="*" 
                         ControlToValidate="txtUserEmail" ForeColor="Yellow"></asp:RequiredFieldValidator>
          
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("UserEmail") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserEmail") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserAddress" SortExpression="UserAddress">
                <EditItemTemplate>
                    <asp:TextBox ID="txtUserAddress" runat="server" Text='<%# Bind("UserAddress") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserAddressRequiredFieldValidator" runat="server"
                        ErrorMessage="Please enter a valid address." Text="*" ControlToValidate="txtUserAddress"
                        ForeColor="Yellow"></asp:RequiredFieldValidator>
          
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("UserAddress") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("UserAddress") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:DetailsView>
    

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderMember" runat="server">
</asp:Content>
