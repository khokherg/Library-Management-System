<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHomePageMaster.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="LibraryManagementSystem.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderAdmin" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderAdmin" runat="server">
     
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderAdmin" runat="server">
    

    <br />
   <br />
    <div id="BookInfoGrid">
    <asp:GridView cssClass="DataGrid" ID="grdBook" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSourceBook" ShowFooter="True"  Height="134px" style="margin-left: 0px" BorderColor="Black" BorderStyle="Double" BorderWidth="10px" Caption="Book Information" CaptionAlign="Top" CellPadding="3" CellSpacing="5" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#FFFFCC" BorderColor="Black" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField HeaderText="BookID" InsertVisible="False" SortExpression="BookID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("BookID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("BookID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
   <asp:LinkButton CssClass="GridHyperlink" ID="btnInsert" OnClick="BtnInsert_Click" ValidationGroup="Insert" runat="server">Insert</asp:LinkButton>
              
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField  HeaderText="ISBN" SortExpression="ISBN">
                <EditItemTemplate>
                    <asp:TextBox style="width:50px" ID="txtISBNEdit" runat="server" Text='<%# Bind("ISBN") %>'></asp:TextBox>
                  <asp:RequiredFieldValidator Text="*" ForeColor="Yellow" ControlToValidate="txtISBNEdit" ID="ISBNRequiredFieldValidator" runat="server" ErrorMessage="Please enter ISBNof the book"></asp:RequiredFieldValidator>
        
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label  ID="Label2" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
    <asp:TextBox style="width:50px" ID="txtISBN" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ControlToValidate="txtISBN" ValidationGroup="Insert" ID="ISBNInsertRequiredFieldValidator" Text="*" ForeColor="Yellow" runat="server" ErrorMessage="Please enter book ISBN"></asp:RequiredFieldValidator>
             
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="BookName" SortExpression="BookName">
                <EditItemTemplate>
                    <asp:TextBox style="width:70px" ID="txtBookNameEdit" runat="server" Text='<%# Bind("BookName") %>'></asp:TextBox>
                   <asp:RequiredFieldValidator ControlToValidate="txtBookNameEdit" ID="BNameRequiredFieldValidator" runat="server" Text="*" ForeColor="Yellow" ErrorMessage="Please enter book name">

                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("BookName") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox style="width:70px" ID="txtBookName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txtBookName" ValidationGroup="Insert" ID="BNameInsertRequiredFieldValidator" Text="*" ForeColor="Yellow" runat="server" ErrorMessage="Please enter book name"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PublisherName" SortExpression="PublisherName">
                <EditItemTemplate>
                    <asp:DropDownList style="width:70px" ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceBookDrp" DataTextField="PublisherName" DataValueField="PublisherID" SelectedValue='<%# Bind("PublisherID") %>'>
                    </asp:DropDownList>
               
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label style="width:70px" ID="Label4" runat="server" Text='<%# Bind("PublisherName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>

                    <asp:DropDownList style="width:70px" ID="DropDownListPub" runat="server" DataSourceID="SqlDataSourcePubDrp" DataTextField="PublisherName" DataValueField="PublisherID">
                        <asp:ListItem Value="-2">Select Publisher</asp:ListItem>
                    </asp:DropDownList>

                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="AuthorName" SortExpression="AuthorName">
                <EditItemTemplate>
                    <asp:DropDownList style="width:70px" ID="drpAuthor" runat="server" DataSourceID="SqlDataSourceAuthorDrp" DataTextField="AuthorName" DataValueField="AuthorID" SelectedValue='<%# Bind("AuthorID") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList style="width:70px"  ID="drpAuthorInsert" runat="server" DataSourceID="SqlDataSourceAuthDrp" DataTextField="AuthorName" DataValueField="AuthorID">
                    </asp:DropDownList>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label style="width:70px" ID="Label5" runat="server" Text='<%# Bind("AuthorName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CategoryName" SortExpression="CategoryName">
                <EditItemTemplate>
                    <asp:DropDownList ID="drpCategory" runat="server" DataSourceID="SqlDataSourceCategoryDrp" DataTextField="CategoryName" DataValueField="CategoryID" SelectedValue='<%# Bind("CategoryID") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList  ID="DropDownListCatInsert" runat="server" DataSourceID="SqlDataSourceCatDrp" DataTextField="CategoryName" DataValueField="CategoryID">
                    </asp:DropDownList>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="QtyAvailable" SortExpression="QuantityAvailable">
                <EditItemTemplate>
                
                     <asp:DropDownList style="width:50px" ID="txtQuantityEditDropDownList" SelectedValue='<%# Bind("QuantityAvailable") %>' runat="server">
                        <asp:ListItem>Select Availability</asp:ListItem>
                         <asp:ListItem>Y</asp:ListItem>
                         <asp:ListItem>N</asp:ListItem>

                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ControlToValidate="txtQuantityEditDropDownList" ID="QuantityRequiredFieldValidator" runat="server" Text="*" ForeColor="Yellow" 
                        ErrorMessage="Please select the avaiability of the book" InitialValue="Select Availability" >

                    </asp:RequiredFieldValidator>

                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label style="width:50px" ID="Label7" runat="server" Text='<%# Bind("QuantityAvailable") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList style="width:60px" ID="txtQuantityDropDownList" runat="server">
                        <asp:ListItem>Select Availability</asp:ListItem>
                         <asp:ListItem>Y</asp:ListItem>
                         <asp:ListItem>N</asp:ListItem>

                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ControlToValidate="txtQuantityDropDownList" ID="QuantityRequiredFieldValidator" runat="server" Text="*" ForeColor="Yellow" ErrorMessage="Please select the availability of the book " InitialValue="Select Availability" ValidationGroup="Insert" >

                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField  HeaderText="BookDesc" SortExpression="BookDesc">
                <EditItemTemplate>
                    <asp:TextBox style="width:80px" ID="TextBox7" runat="server" Text='<%# Bind("BookDesc") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("BookDesc") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox style="width:100px"  ID="txtBook_description" TextMode="MultiLine" runat="server"></asp:TextBox>

                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PublisherID" SortExpression="PublisherID">
                <EditItemTemplate>
                    <asp:TextBox style="width:50px" ID="TextBox3" runat="server" Text='<%# Eval("PublisherID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label style="width:50px" ID="Label10" runat="server" Text='<%# Bind("PublisherID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="AuthorID" SortExpression="AuthorID">
                <EditItemTemplate>
                    <asp:TextBox style="width:50px" ID="TextBox9" runat="server" Text='<%# Eval("AuthorID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label style="width:50px" ID="Label11" runat="server" Text='<%# Bind("AuthorID") %>'></asp:Label>
                </ItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CategoryID" SortExpression="CategoryID">
                <EditItemTemplate>
                    <asp:TextBox style="width:50px" ID="TextBox10" runat="server" Text='<%# Eval("CategoryID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label style="width:50px" ID="Label12" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>

                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                    <asp:DropDownList style="width:70px" ID="drpBookStatusEdit" SelectedValue='<%# Bind("Status") %>' runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="BStatusEditRequiredFieldValidator" runat="server" ErrorMessage="Pleae select Book Status " Text="*"  ForeColor="Yellow" ControlToValidate="drpBookStatusEdit" InitialValue="Select Status"></asp:RequiredFieldValidator>
               
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label style="width:70px" ID="Label9" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList style="width:60px" ID="drpBookStatus" runat="server">
                         <asp:ListItem>Select Status</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                  <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="BStatusRequiredFieldValidator" runat="server" ErrorMessage="Pleae select author Status " Text="*" ValidationGroup="Insert" ForeColor="Yellow" ControlToValidate="drpBookStatus" InitialValue="Select Status"></asp:RequiredFieldValidator>
                    </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:ValidationSummary ID="UpdateValidationSummary" runat="server" />
    <br />
    <asp:SqlDataSource ID="SqlDataSourceBook" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [BookID], [ISBN], [BookName], [PublisherName], [AuthorName], [CategoryName], [QuantityAvailable], [BookDesc], [PublisherID], [AuthorID], [CategoryID], [Status] FROM [Books]" DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Books] ([ISBN], [BookName], [PublisherName], [AuthorName], [CategoryName], [QuantityAvailable], [BookDesc], [PublisherID], [AuthorID], [CategoryID], [Status]) VALUES (@ISBN, @BookName, @PublisherName, @AuthorName, @CategoryName, @QuantityAvailable, @BookDesc, @PublisherID, @AuthorID, @CategoryID, @Status)" UpdateCommand="UPDATE [Books] SET [ISBN] = @ISBN, [BookName] = @BookName, [PublisherName] = @PublisherName, [AuthorName] = @AuthorName, [CategoryName] = @CategoryName, [QuantityAvailable] = @QuantityAvailable, [BookDesc] = @BookDesc, [PublisherID] = @PublisherID, [AuthorID] = @AuthorID, [CategoryID] = @CategoryID, [Status] = @Status WHERE [BookID] = @BookID">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="BookName" Type="String" />
            <asp:Parameter Name="PublisherName" Type="String" />
            <asp:Parameter Name="AuthorName" Type="String" />
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="QuantityAvailable" Type="String" />
            <asp:Parameter Name="BookDesc" Type="String" />
            <asp:Parameter Name="PublisherID" Type="Int32" />
            <asp:Parameter Name="AuthorID" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="BookName" Type="String" />
            <asp:Parameter Name="PublisherName" Type="String" />
            <asp:Parameter Name="AuthorName" Type="String" />
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="QuantityAvailable" Type="String" />
            <asp:Parameter Name="BookDesc" Type="String" />
            <asp:Parameter Name="PublisherID" Type="Int32" />
            <asp:Parameter Name="AuthorID" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="BookID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceBookDrp" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT PublisherID, PublisherName, Status FROM Publishers WHERE (Status = 'A')"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceAuthorDrp" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT AuthorID, AuthorName, Status FROM Authors WHERE (Status = 'A')"></asp:SqlDataSource>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSourcePublisher" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Publishers] WHERE ([PublisherName] = @PublisherName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="grdBook" Name="PublisherName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT AuthorID, AuthorName, Status FROM Authors WHERE (AuthorName = @AuthorName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="grdBook" Name="AuthorName" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceCategoryDrp" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CategoryID, CategoryName, Status FROM Categories WHERE (Status = 'A')"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CategoryID, CategoryName, Status FROM Categories WHERE (CategoryName = @CategoryName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="grdBook" Name="CategoryName" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSourcePubDrp" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT PublisherID, PublisherName, Status FROM Publishers WHERE (Status = 'A')"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceAuthDrp" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT AuthorID, AuthorName, Status FROM Authors WHERE (Status = 'A')"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceCatDrp" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT CategoryID, CategoryName, Status FROM Categories WHERE (Status = 'A')"></asp:SqlDataSource>
    <br />
    <br />
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderAdmin" runat="server">
</asp:Content>
