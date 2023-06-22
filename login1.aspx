<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="internal1.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
       <center class="auto-style1">
        <div class="container">
            <div class="title" >Login<br />
              
                <br /></div>
                <asp:Label ID="Label1" runat="server" Font-Size="13pt" Text="Name"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" placeholder="Enter Name" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Size="13pt" Text="Password"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
            <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*At least 8 characters with special character,number,upper and lower case" Font-Size="8pt" ForeColor="Red" ControlToValidate="TextBox2" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"></asp:RegularExpressionValidator>
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Font-Size="10pt" Text="Login"  Height="35px" Width="66px" OnClick="Button1_Click" />
            &nbsp;&nbsp;<br />
            <br />
                <asp:Button ID="Button2" runat="server" Text="Register"  Font-Size="10pt" Height="35px" Width="113px" OnClick="Button2_Click" />
         
            </div>
</body>
</html>
</asp:Content>
