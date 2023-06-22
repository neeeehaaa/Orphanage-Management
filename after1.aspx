<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="after1.aspx.cs" Inherits="internal1.after1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <center class="auto-style1">
        <div class="container">
       
            <div class="title">Login Succesfully<br /></div>
            <p>  
                <asp:Label ID="Label1" runat="server" Font-Size="20pt"></asp:Label>  
            </p>
            <p>  
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </p>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                    </asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
            <p>  
                &nbsp;</p>  
            <p>  
                <asp:Button ID="Button1" runat="server" Height="47px" onclick="Button1_Click"   
Text="Logout" Width="92px" />  
            </p> 
    
            </div>
</body>
</html>
</asp:Content>
