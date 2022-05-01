<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHomePageMaster.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="LibraryManagementSystem.Author" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderAdmin" runat="server">
    &nbsp;<br />
    <asp:GridView ID="grdAuthor" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="AuthorID" DataSourceID="SqlDataSourceAuthor" ShowFooter="True" BorderStyle="Double" HorizontalAlign="Center" BorderColor="Black" BorderWidth="10px" Caption="Author Information">
        <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField HeaderText="AuthorID" InsertVisible="False" SortExpression="AuthorID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("AuthorID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("AuthorID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="AuthorName" SortExpression="AuthorName">
                <EditItemTemplate>
                    <asp:TextBox ID="txtAuthorNameEdit" runat="server" Text='<%# Bind("AuthorName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ANameEditRequiredFieldValidator" runat="server"
                      ControlToValidate="txtAuthorNameEdit" Text="*" ForeColor="Yellow" 
                        ErrorMessage="Plesae Enter Author name"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("AuthorName") %>'></asp:Label>
                        
                    </ItemTemplate>
                <FooterTemplate>
                        <asp:LinkButton cssClass="GridHyperlink" ID="btnInsert" ValidationGroup="Insert" 
                        OnClick="BtnInsert_Click" runat="server">Insert</asp:LinkButton>
                    <asp:TextBox ID="txtAuthorName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="Insert" ID="ANameRequiredFieldValidator" runat="server"
                      ControlToValidate="txtAuthorName" Text="*" ForeColor="Yellow" 
                        ErrorMessage="Plesae Enter Author name"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                      <asp:DropDownList ID="drpAuthorStatusEdit" SelectedValue='<%# Bind("Status") %>' 
                          runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="AStatusEditRequiredFieldValidator" runat="server" ErrorMessage="Pleae select Author Status " Text="*" ForeColor="Yellow" ControlToValidate="drpAuthorStatusEdit" InitialValue="Select Status">

                     </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="drpAuthorStatus" runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="AStatusRequiredFieldValidator" runat="server" ErrorMessage="Pleae select author Status " Text="*" ValidationGroup="Insert" ForeColor="Yellow" ControlToValidate="drpAuthorStatus" InitialValue="Select Status"></asp:RequiredFieldValidator>
               
                    </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <asp:ValidationSummary ValidationGroup="Insert" ID="InsertValidationSummary" runat="server" />
    <asp:ValidationSummary ID="UpdateValidationSummary" runat="server" />
<br />
<br />
    <asp:SqlDataSource ID="SqlDataSourceAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Authors]" DeleteCommand="DELETE FROM [Authors] WHERE [AuthorID] = @AuthorID" InsertCommand="INSERT INTO [Authors] ([AuthorName], [Status]) VALUES (@AuthorName, @Status)" UpdateCommand="UPDATE [Authors] SET [AuthorName] = @AuthorName, [Status] = @Status WHERE [AuthorID] = @AuthorID">
        <DeleteParameters>
            <asp:Parameter Name="AuthorID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AuthorName" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AuthorName" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="AuthorID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
&nbsp;
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderAdmin" runat="server">
    <p>
    <br />
</p>
</asp:Content>







