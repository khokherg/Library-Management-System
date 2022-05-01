<%@ Page Title="" Language="C#" MasterPageFile="~/LibrarianHomePageMaster.Master" AutoEventWireup="true" CodeBehind="CalculateFinePage.aspx.cs" Inherits="LibraryManagementSystem.CalculateFinePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolderLibrarian" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolderLibraraian" runat="server">
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolderLibraraian" runat="server">
    <div class="MainDiv">
    <p id="FinePageFrame">
    <asp:Label CssClass="lbl" class="lbl" ID="lblUserID" runat="server" Text="User ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidatorCalcFine" runat="server"
    ControlToValidate="txtUserID"
    ErrorMessage="Please enter user ID" ></asp:RequiredFieldValidator>
&nbsp;
   
    <br />
    <br />
    <br />
<br />
    <asp:Button CssClass="btnLibrarian" ID="btnCalculateFine" runat="server" OnClick="btnCalculateFine_Click1" Text="CalculateFine" />
   
    <br />
    <br />
        </p>
    <asp:GridView  ID="grdFine" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceFineCalculate" BorderColor="Black" BorderStyle="Double" BorderWidth="10px" Caption="User Fine" CaptionAlign="Top" EmptyDataText="There is no Fine to this user" HorizontalAlign="Center" BackColor="White" Visible="false">
        <AlternatingRowStyle BackColor="#FFFFCC" />
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="BookID" SortExpression="BookID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="ReturnedDate" HeaderText="ReturnedDate" SortExpression="ReturnedDate" />
            <asp:BoundField DataField="Fine" HeaderText="Fine" SortExpression="Fine" />
            <asp:BoundField DataField="IsFinePaid" HeaderText="IsFinePaid" SortExpression="IsFinePaid" />
        </Columns>
        <EmptyDataRowStyle HorizontalAlign="Center" />
        <FooterStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" BorderColor="Black" Font-Bold="True" Font-Italic="False" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceFineCalculate" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ReturnedBooksRecord] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtUserID" Name="UserID" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br /></div>
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolderLibrarian" runat="server">
</asp:Content>
