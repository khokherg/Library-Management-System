<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHomePageMaster.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="LibraryManagementSystem.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderAdmin" runat="server">
    &nbsp;
    &nbsp;&nbsp;&nbsp;
    <br />
    <asp:GridView ID="grdCategory" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryID" DataSourceID="SqlDataSourceCategory" ShowFooter="True" AllowSorting="True" BorderColor="Black" BorderStyle="Double" Font-Bold="False" Font-Size="Large" Height="205px" Width="523px" HorizontalAlign="Center" BorderWidth="10px" Caption="Book Category Information">
        <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField HeaderText="CategoryID" InsertVisible="False" SortExpression="CategoryID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton cssClass="GridHyperlink" ID= "btnInsert" ValidationGroup="Insert" 
                        OnClick="BtnInsert_Click" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CategoryName" SortExpression="CategoryName">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCategoryNameEdit" runat="server" Text='<%# Bind("CategoryName") %>'></asp:TextBox>
               <asp:RequiredFieldValidator ID="CNameEditRequiredFieldValidator" runat="server"
                      ControlToValidate="txtCategoryNameEdit" Text="*" ForeColor="Yellow" 
                        ErrorMessage="Plesae Enter Author name"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
               
                    </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtCategory_name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="Insert" ID="CNameRequiredFieldValidator" runat="server" 
                        ControlToValidate="txtCategory_name" ErrorMessage ="Plesae Enter category Name"
                        Text="*" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                    
               <asp:DropDownList ID="drpCategoryStatusEdit" SelectedValue='<%# Bind("Status") %>' runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="CStatusEditRequiredFieldValidator" runat="server" ErrorMessage="Pleae select Category Status " Text="*" ForeColor="Yellow" ControlToValidate="drpCategoryStatusEdit" InitialValue="Select Status">

                     </asp:RequiredFieldValidator>
               
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="drpCategoryStatus" runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="CStatusRequiredFieldValidator" runat="server" ErrorMessage="Pleae select Category Status " Text="*" ValidationGroup="Insert" ForeColor="Yellow" ControlToValidate="drpCategoryStatus" InitialValue="Select Status"></asp:RequiredFieldValidator>
               
                    </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" BorderColor="#00CCCC" BorderStyle="Groove" ForeColor="White" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" BorderStyle="Groove" Font-Underline="False" ForeColor="White" />
    </asp:GridView>
    <asp:ValidationSummary ValidationGroup="Insert" ID="InsertValidationSummary" runat="server" />
    <asp:ValidationSummary  ID="UpdateValidationSummary" runat="server" />
    <br />
    <br />
     
    <br />
    <asp:SqlDataSource ID="SqlDataSourceCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO [Categories] ([CategoryName], [Status]) VALUES (@CategoryName, @Status)" SelectCommand="SELECT * FROM [Categories]" DeleteCommand="DELETE FROM [Categories] WHERE [CategoryID] = @CategoryID" UpdateCommand="UPDATE [Categories] SET [CategoryName] = @CategoryName, [Status] = @Status WHERE [CategoryID] = @CategoryID">
        <DeleteParameters>
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderAdmin" runat="server">
</asp:Content>
