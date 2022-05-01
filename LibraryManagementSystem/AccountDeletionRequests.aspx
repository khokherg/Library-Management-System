<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHomePageMaster.Master" AutoEventWireup="true" CodeBehind="AccountDeletionRequests.aspx.cs" Inherits="LibraryManagementSystem.AccountDeletionRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderAdmin" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceDeleteRequest" BorderColor="Black" BorderStyle="Solid" Font-Bold="False" Font-Size="Large" HorizontalAlign="Center" Caption="Account Deletion Requests">
        <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField HeaderText="UserID" SortExpression="UserID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                  
               <asp:DropDownList ID="drpUserRequestEditStatus" SelectedValue='<%# Bind("Status") %>' runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>Request Pending</asp:ListItem>
                  <asp:ListItem>Request Completed</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="URequestEditStatusRequiredFieldValidator" runat="server" ErrorMessage="Pleae select Request Status " Text="*"  ForeColor="Yellow" ControlToValidate="drpUserRequestEditStatus" InitialValue="Select Status"></asp:RequiredFieldValidator>
               
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="drpRequestStatus" runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="URequestStatusRequiredFieldValidator" runat="server" ErrorMessage="Pleae select Request Status " Text="*" ValidationGroup="Insert" ForeColor="Yellow" 
                         ControlToValidate="drpRequestStatus" InitialValue="Select Status"></asp:RequiredFieldValidator>
               
                    </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        <EmptyDataTemplate>There are no pending requests</EmptyDataTemplate>
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    &nbsp;&nbsp; 
    <br />
    <asp:SqlDataSource ID="SqlDataSourceDeleteRequest" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT        UserID, Status
FROM            DeleteAccountRequest
WHERE        (Status = 'Request Pending')" UpdateCommand="UPDATE [DeleteAccountRequest] SET  [Status] = @Status WHERE [UserID] = @UserID
">
        <UpdateParameters>
            <asp:Parameter Name="Status" />
            <asp:Parameter Name="UserID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p style="text-align:center">Proceed to Deactivate user account <a href="Users.aspx">Here</a></p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderAdmin" runat="server">
</asp:Content>




