  <%@ Page Title="" Language="C#" MasterPageFile="~/LMS.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LibraryManagementSystem.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
  
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div id ="LoginBody"> 
   
 
<p id="LoginInfoFrame" >
    <asp:Label CssClass="lbl" ID="lblUserName" runat="server" Text="User ID: "></asp:Label>

&nbsp;&nbsp;&nbsp;

<asp:TextBox ID="txtUserID" runat="server" Width="153px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="UserNameRequiredFieldValidator" runat="server"
          ControlToValidate="txtUserID"  ErrorMessage="Please enter user name"></asp:RequiredFieldValidator>

    <br /> <br />
   <%-- <asp:Label ID="lblUser" runat="server" Text="User Name: "></asp:Label>--%>
    <%--<asp:TextBox ID="txtUserName" runat="server"><asp:TextBox>--%>
    

    <asp:Label CssClass="lbl" ID="lblPassword" runat="server" Text="Password: "></asp:Label>
&nbsp;<asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="151px"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="PasswordRequ1iredFieldValidator" runat="server"
       ControlToValidate="txtPassword" ErrorMessage="Plesae enter password"></asp:RequiredFieldValidator>

    <br />
    <asp:Label cssclass="lbl" ID="lblLoginAs" runat="server" Text="Login as: "></asp:Label> <br />
    <asp:RadioButton CssClass="rdButtonsLogin" ID="rdbAdmin"  runat="server" GroupName="userRole" Text="Admin" />

  
        <br />
  
        <asp:RadioButton CssClass="rdButtonsLogin" ID="rdbLibrarian" runat="server" GroupName="userRole" Text="Librarian" />
     <br />

        <asp:RadioButton CssClass="rdButtonsLogin" ID="rdbMember" runat="server" GroupName="userRole" Text="Member" />
    <br /> <br />
    <asp:Button ID="btnLogIn" ClientIDMode="Static" runat="server" OnClick="btnLogIn_Click" Text="Log in" Height="33px" Width="98px" />
    <br /><br />Do not have account? <a href="UserSignUp.aspx">Sign up here</a>
 
        
 </div>

</asp:Content>
   
<%--<asp:Content ID="Content3" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
       
</asp:Content>--%>
