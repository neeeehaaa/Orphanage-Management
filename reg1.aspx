<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reg1.aspx.cs" Inherits="internal1.reg1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 845px;
        }
        .auto-style2 {
            height: 36px;
        }
        .auto-style3 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!DOCTYPE html>


<html>

<body>
    <script type="text/javascript">
                        function f123(sender, args) {
                            
                            if (document.getElementById('<%=TextBox5.ClientID %>').value.length < 10)
                                 args.IsValid = false;
                            else
                                 args.IsValid = true;
                        }
    </script>
    <center style="height: 700px">
        <div class="container">
            <div class="title">Student Registration<br />
            </div>
  
   
       
    
        <center>
   <table  style="margin-top:5px; margin-left:10px;" height="100%" class="auto-style1">
       
        <tr>
             <td>  
                 <asp:Label ID="id" runat="server" Text="id"></asp:Label>
             </td>
           
           <td> 
               <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
             </td>
            
          </tr>
        <tr>
             <td>  <asp:Label ID="Label1" runat="server" Text="Student's Name" Font-Size="13pt"></asp:Label></td>
           
           <td> <asp:Label runat="server" Text="Father's Name" ID="Label2" Font-Size="13pt"></asp:Label></td>
            
          </tr>
       
       <tr>
                <td class="auto-style2"> <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your Name" Height="22px" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*cannot be blank" Font-Size="8pt" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
     
               <td class="auto-style2">  <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your Father's Name" Height="22px" Width="160px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*cannot be blank" Font-Size="8pt" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>   
           <tr style="height: 20px">
               <td>
                <asp:Label ID="Label3" runat="server" Text="Mother's Name" Font-Size="13pt"></asp:Label> </td>
        
                 <td ><asp:Label ID="Label4" runat="server" Text="Date of Birth" Font-Size="13pt"></asp:Label>
                
          </td> </tr>
       <tr style="height: 20px"><td>
               <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your Mother's Name" Height="22px" Width="160px"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*cannot be blank" Font-Size="8pt" ForeColor="Red"></asp:RequiredFieldValidator>
           </td>
         
               <td> <asp:TextBox ID="TextBox4" runat="server" Width="160px" Height="22px" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*cannot be blank" Font-Size="8pt" ForeColor="Red"></asp:RequiredFieldValidator>
           </td> </tr>
        <tr style="height: 20px">
            <td colspan="2">
               <asp:Label ID="Label7" runat="server" Text="Gender" Font-Size="13pt"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style1" Height="10px" Width="299px">
            <asp:ListItem>Male </asp:ListItem>  
            <asp:ListItem>Female</asp:ListItem>  
            <asp:ListItem>Other</asp:ListItem>               
            </asp:RadioButtonList>     
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*select something" Font-Size="8pt" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
           </tr>
        <tr style="height: 20px"><td>
                <asp:Label ID="Label5" runat="server" Text="Mobile No." Font-Size="13pt"></asp:Label> </td>
             
                <td><asp:Label ID="Label6" runat="server" Text="E-Mail" Font-Size="13pt"></asp:Label>
           </td></tr>
        <tr style="height: 20px"><td>
                <asp:TextBox ID="TextBox5" runat="server"  placeholder="Enter your Mobile No." Height="22px" Width="160px" ></asp:TextBox> 
                <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="f123" ControlToValidate="TextBox5" ErrorMessage="*Must be 10 digits" Font-Size="8pt" ForeColor="Red"></asp:CustomValidator>
                </td>
                <td><asp:TextBox ID="TextBox6" runat="server"  placeholder="Enter your E-Mail" Height="22px" Width="180px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*invalid email" Font-Size="8pt" ForeColor="Red" ControlToValidate="TextBox6" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>

                      </td>
</tr>  
        <tr style="height: 20px">
            <td colspan="2">
                <asp:Label ID="Label12" runat="server" Text="Course" Font-Size="13pt"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem>B.Tech </asp:ListItem>  
            <asp:ListItem>BSc</asp:ListItem>  
            <asp:ListItem>BCA</asp:ListItem>  
            <asp:ListItem>MCA</asp:ListItem>  
            <asp:ListItem>MSc</asp:ListItem>  
                </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*select something" Font-Size="8pt" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
       <tr style="height: 20px">
           <td colspan="2">
               <asp:Label ID="Label8" runat="server" Text="Address" Font-Size="13pt"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="TextBox7" runat="server" placeholder="House No.----Street----Road" Height="22px" Width="200px"></asp:TextBox>
               <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="*cannot be blank" Font-Size="8pt" ForeColor="Red"></asp:RequiredFieldValidator>
           
           </td>
       </tr>
       
    <tr style="height: 20px">
        <td colspan="2">
<asp:Label ID="Label10" runat="server" Text="City" Font-Size="13pt"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox9" runat="server" placeholder="Enter your City" Height="22px" Width="200px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="*cannot be blank" Font-Size="8pt" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
       <tr  style="height: 20px">
       
             <td colspan="2">
               <asp:Label ID="Label11" runat="server" Text="Country" Font-Size="13pt"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox10" runat="server" placeholder="Enter your Country" Height="22px" Width="200px"></asp:TextBox>
                 <br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox10" ErrorMessage="*cannot be blank" Font-Size="8pt" ForeColor="Red"></asp:RequiredFieldValidator>
           </td>
       </tr>
       <tr>
             <td colspan="2">  <asp:Label ID="Label13" runat="server" Text="Password" Font-Size="13pt"></asp:Label></td>
           </tr>
       <tr> <td colspan="2"> <asp:TextBox ID="TextBox12" runat="server" placeholder="Enter your Password" Height="22px" Width="160px" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="*At least 8 characters with special character,number,upper and lower case" Font-Size="8pt" ForeColor="Red" ControlToValidate="TextBox8" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"></asp:RegularExpressionValidator>
                    </td></tr>
       <tr>
           <td colspan="2"> <asp:Label runat="server" Text="Confirm Password" ID="Label14" Font-Size="13pt"></asp:Label></td>
            
          </tr>
       
       <tr>
                <td colspan="2"> <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter your Password" Height="22px" Width="160px" TextMode="Password"></asp:TextBox>
                     <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox12" ErrorMessage="*password Doesn't match" Font-Size="8pt" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
       <tr>
           <td>
               <asp:Label runat="server" Text="Photo" ID="Label9" Font-Size="13pt"></asp:Label>
           </td>
       </tr>
              <tr>
                  <td>
                      <asp:FileUpload ID="FileUpload1" runat="server" />
                      <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                  </td>
              </tr>
   </table>
            
            </center>
    <p>
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" Height="25px" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CausesValidation="False" CssClass="auto-style3" OnClick="Button2_Click" Text="Login" />
            </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
           
         
               
    </div>
        </center>
</body>
</html>
</asp:Content>
