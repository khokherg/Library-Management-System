<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHomePageMaster.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="LibraryManagementSystem.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderAdmin" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderAdmin" runat="server">
    <br />
    <br />
    <br />
    <asp:GridView ID="grdUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSourceUsers" ShowFooter="True" AllowPaging="True" BorderColor="Black" BorderStyle="Double" Font-Bold="False" Font-Size="Large" HorizontalAlign="Center" OnSelectedIndexChanged="grdUsers_SelectedIndexChanged" BorderWidth="10px" Caption="Users Information" >
        <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField HeaderText="UserID" InsertVisible="False" SortExpression="UserID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                       <asp:LinkButton CssClass="GridHyperlink" ID="btnInsert" OnClick="BtnInsert_Click" runat="server" ValidationGroup="Insert">Insert</asp:LinkButton>
              
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                <EditItemTemplate>
                    <asp:TextBox ID="txtUserNameEdit" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
              <asp:RequiredFieldValidator ID="UNameEditRequiredFieldValidator" runat="server" ErrorMessage="Please enter user name" Text="*" ControlToValidate="txtUserNameEdit" ForeColor="Yellow"></asp:RequiredFieldValidator>
          
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                       <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UNameRequiredFieldValidator" runat="server" 
                        ErrorMessage="Please enter user name" Text="*" ValidationGroup="Insert" ForeColor="Yellow" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserEmail" SortExpression="UserEmail">
                <EditItemTemplate>
                    <asp:TextBox ID="txtUserEmailEdit" TextMode="Email" runat="server" Text='<%# Bind("UserEmail") %>'></asp:TextBox>
                 <asp:RequiredFieldValidator ID="UEmailEditRequiredFieldValidator" runat="server" ErrorMessage="Please enter user email" Text="*" ControlToValidate="txtUserEmailEdit" ForeColor="Yellow"></asp:RequiredFieldValidator>
        
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("UserEmail") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                       <asp:TextBox ID="txtUEmail" TextMode="Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UEmailRequiredFieldValidator" runat="server" ErrorMessage="Please enter user email" Text="*" ValidationGroup="Insert" ForeColor="Yellow" ControlToValidate="txtUEmail"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserAddress" SortExpression="UserAddress">
                <EditItemTemplate>
                    <asp:TextBox ID="txtUserAddressEdit" runat="server" Text='<%# Bind("UserAddress") %>'></asp:TextBox>
                 <asp:RequiredFieldValidator ID="UAddressEditRequiredFieldValidator" runat="server" ErrorMessage="Please enter user address" Text="*" ControlToValidate="txtUserAddressEdit" ForeColor="Yellow"></asp:RequiredFieldValidator>
        
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("UserAddress") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                       <asp:TextBox ID="txtUserAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UAddressRequiredFieldValidator" runat="server" ErrorMessage="Please enter user address" Text="*" ValidationGroup="Insert" ForeColor="Yellow" ControlToValidate="txtUserAddress"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="BookLimit" SortExpression="BookLimit">
                <EditItemTemplate>
                    
              <asp:DropDownList ID="drpBookLimitEdit" SelectedValue='<%# Bind("BookLimit") %>' runat="server">
                        <asp:ListItem>Select Limit</asp:ListItem>
                  <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="BookLimitEditRequiredFieldValidator" runat="server" ErrorMessage="Pleae select book limit" Text="*" ForeColor="Yellow" ControlToValidate="drpBookLimitEdit"
                        InitialValue="Select Limit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("BookLimit") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:DropDownList ID="drpBookLimit" runat="server">
                        <asp:ListItem>Select Limit</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="BookLimitRequiredFieldValidator" runat="server" ErrorMessage="Pleae select book limit" Text="*" ForeColor="Yellow" ValidationGroup="Insert" 
                        ControlToValidate="drpBookLimit" InitialValue="Select Limit"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MaxReissueBookCount" SortExpression="MaxReissueBookCount">
                <EditItemTemplate>
                   
               <asp:DropDownList ID="drpMaxBookReissueEdit" SelectedValue='<%# Bind("MaxReissueBookCount") %>' runat="server">
                        <asp:ListItem>Select Limit</asp:ListItem>
                   <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="MaxLimitEditRequiredFieldValidator" runat="server" ErrorMessage="Pleae select maximum book limit" Text="*" ForeColor="Yellow" ControlToValidate="drpMaxBookReissueEdit"
                        InitialValue="Select Limit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("MaxReissueBookCount") %>'></asp:Label>
                </ItemTemplate>

                  <FooterTemplate>
                       <asp:DropDownList ID="drpMaxBookReissue" runat="server">
                        <asp:ListItem>Select Limit</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="MaxLimitRequiredFieldValidator" runat="server" ErrorMessage="Pleae select maximum book limit" Text="*" ValidationGroup="Insert" ForeColor="Yellow" ControlToValidate="drpMaxBookReissue"
                        InitialValue="Select Limit"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                <asp:DropDownList ID="drpUserStatusEdit" SelectedValue='<%# Bind("Status") %>' runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="UStatusEditRequiredFieldValidator" runat="server" ErrorMessage="Pleae select User Status " Text="*" ValidationGroup="Insert" ForeColor="Yellow"
                         ControlToValidate="drpUserStatusEdit" InitialValue="Select Status"></asp:RequiredFieldValidator>
               
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:DropDownList ID="drpUserStatus" runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="UStatusRequiredFieldValidator" runat="server" ErrorMessage="Pleae select User Status " Text="*" ValidationGroup="Insert" ForeColor="Yellow" 
                         ControlToValidate="drpUserStatus" InitialValue="Select Status"></asp:RequiredFieldValidator>
               
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserRole" SortExpression="UserRole">
                <EditItemTemplate>
               <asp:DropDownList ID="drpUserRoleEdit" SelectedValue='<%# Bind("UserRole") %>' runat="server">
                        <asp:ListItem>Select Role</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Librarian</asp:ListItem>
                        <asp:ListItem>Member</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="URoleEditRequiredFieldValidator" runat="server" ErrorMessage="Pleae select user role" Text="*" ForeColor="Yellow" ControlToValidate="drpUserRoleEdit"
                        InitialValue="Select Role"></asp:RequiredFieldValidator>
          
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("UserRole") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                     <asp:DropDownList ID="drpUserRole" runat="server">
                        <asp:ListItem>Select Role</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Librarian</asp:ListItem>
                        <asp:ListItem>Member</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="URoleRequiredFieldValidator" runat="server" ErrorMessage="Pleae select user role" Text="*" ValidationGroup="Insert" ForeColor="Yellow" ControlToValidate="drpUserRole" InitialValue="Select Role"></asp:RequiredFieldValidator>
                </FooterTemplate>

            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:ValidationSummary ID="InsertValidationSummary" ValidationGroup="Insert" runat="server" />
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
    <br />
    <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [Users] ([UserName], [UserEmail], [UserAddress], [BookLimit], [MaxReissueBookCount], [Status], [UserRole]) VALUES (@UserName, @UserEmail, @UserAddress, @BookLimit, @MaxReissueBookCount, @Status, @UserRole)" SelectCommand="SELECT [UserID], [UserName], [UserEmail], [UserAddress], [BookLimit], [MaxReissueBookCount], [Status], [UserRole] FROM [Users]" UpdateCommand="UPDATE [Users] SET [UserName] = @UserName, [UserEmail] = @UserEmail, [UserAddress] = @UserAddress, [BookLimit] = @BookLimit, [MaxReissueBookCount] = @MaxReissueBookCount, [Status] = @Status, [UserRole] = @UserRole WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="UserAddress" Type="String" />
            <asp:Parameter Name="BookLimit" Type="Int32" />
            <asp:Parameter Name="MaxReissueBookCount" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="UserRole" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="UserAddress" Type="String" />
            <asp:Parameter Name="BookLimit" Type="Int32" />
            <asp:Parameter Name="MaxReissueBookCount" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="UserRole" Type="String" />
            <asp:Parameter Name="UserID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderAdmin" runat="server">
</asp:Content>
