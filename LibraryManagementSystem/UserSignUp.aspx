<%@ Page Title="" Language="C#" MasterPageFile="~/LMS.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="LibraryManagementSystem.UserSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div id="SignupBody">
        <p id="SignupInfoFrame" >
    <asp:Label CssClass="lblUserName" runat="server" Text="User ID: "></asp:Label>

&nbsp;&nbsp;&nbsp;

<asp:TextBox clientIdMode="Static" ID="txtUserIDSignUp" runat="server" Width="153px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="UserIDRequiredFieldValidator" runat="server"
          ControlToValidate="txtUserIDSignUp"  ErrorMessage="Please enter user ID"></asp:RequiredFieldValidator>
    <br /> <br />

    <asp:Label  ID="lblPassword" runat="server" Text="Enter Password: "></asp:Label>
&nbsp;<asp:TextBox clientIDMode="Static" ID="txtPassword" TextMode="Password" runat="server" Width="151px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server"
       ControlToValidate="txtPassword" ErrorMessage="Plesae enter password"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label  ID="lblConfirmPassword" runat="server" Text="Confirm Password: "></asp:Label>
            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
            <asp:CompareValidator runat="server" ID="PasswordCompareValidator" ControlToCompare="txtPassword" ControlToValidate="ConfirmPassword" ErrorMessage="Password does not match with the above" ></asp:CompareValidator>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
    <br />
            <asp:Button runat="server" ClientIDMode="Static" ID="btnSignUp" Height="33px" Width="98px" OnClick="btnSignUpClick" Text="Sign Up" />
            <br /> <br />Alreday have the account? <a href="Login.aspx">Login here</a>
        </p>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
</asp:Content>
