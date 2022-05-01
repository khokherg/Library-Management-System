<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHomePageMaster.Master" AutoEventWireup="true" CodeBehind="Publisher.aspx.cs" Inherits="LibraryManagementSystem.Publisher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderAdmin" runat="server">
    &nbsp;&nbsp;&nbsp;
    &nbsp;<br />
    <asp:GridView ID="grdPublisher" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PublisherID" DataSourceID="SqlDataSourcePublisher" ShowFooter="True" BorderStyle="Double" Font-Bold="False" Font-Size="Large" HorizontalAlign="Center" BackColor="#FFFFCC" BorderColor="Black" BorderWidth="10px" Caption="Publisher Information" CaptionAlign="Top" EnableTheming="True">
        <AlternatingRowStyle BackColor="White" BorderColor="Black" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField HeaderText="PublisherID" InsertVisible="False" SortExpression="PublisherID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("PublisherID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("PublisherID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                     <asp:LinkButton cssClass="GridHyperlink" ID="btnInsert" runat="server" ValidationGroup="Insert"
                         OnClick="BtnInsert_Click">Insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PublisherName" SortExpression="PublisherName">
                <EditItemTemplate>
                    <asp:TextBox cssClass=GridHyperlink ID="txtEditPublisherName" runat="server" Text='<%# Bind("PublisherName") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="txtEditPublisherName" 
                        ID="PNameEditRequiredFieldValidator" runat="server" 
                        ErrorMessage="Plesae enter publisher name" Text="*" ForeColor="Yellow"></asp:RequiredFieldValidator>
              
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("PublisherName") %>'></asp:Label>
                
                </ItemTemplate>
             <FooterTemplate>
                    <asp:TextBox ID="txtPublisherName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                       ControlToValidate="txtPublisherName" ValidationGroup="Insert"
                        ID ="PNameRequiredFieldValidator" runat="server" ErrorMessage="Plesae enter publisher name" ForeColor="Yellow" Text="*"></asp:RequiredFieldValidator>
                </FooterTemplate>
                </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                    <asp:DropDownList ID="drpPublisherStatusEdit"  
                        SelectedValue='<%# Bind("Status") %>' runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="PStatusEditRequiredFieldValidator" runat="server" ErrorMessage="Pleae select author Status " Text="*"  ForeColor="Yellow" ControlToValidate="drpPublisherStatusEdit" InitialValue="Select Status"></asp:RequiredFieldValidator>
               
                   
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="drpPublisherStatus" runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="PStatusRequiredFieldValidator" runat="server" ErrorMessage="Pleae select Publisher Status " Text="*" ValidationGroup="Insert" ForeColor="Yellow"
                         ControlToValidate="drpPublisherStatus" InitialValue="Select Status"></asp:RequiredFieldValidator>
               
                    </FooterTemplate>
            </asp:TemplateField>
     
        </Columns>
        <FooterStyle BackColor="#990000" BorderColor="#00CCCC" BorderStyle="Groove" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Size="Large" Font-Strikeout="False" ForeColor="White" />
    </asp:GridView>
    <br />
    <asp:ValidationSummary ValidationGroup="Insert" ID="InsertValidationSummary" runat="server" />
    <asp:ValidationSummary ID="ValidationSummary" runat="server" />
&nbsp;<asp:SqlDataSource ID="SqlDataSourcePublisher" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Publishers] WHERE [PublisherID] = @PublisherID" InsertCommand="INSERT INTO [Publishers] ([PublisherName], [Status]) VALUES (@PublisherName, @Status)" SelectCommand="SELECT * FROM [Publishers]" UpdateCommand="UPDATE [Publishers] SET [PublisherName] = @PublisherName, [Status] = @Status WHERE [PublisherID] = @PublisherID">
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderAdmin" runat="server">
</asp:Content>
