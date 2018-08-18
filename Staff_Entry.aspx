<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Staff_Entry.aspx.cs" Inherits="Admin_Staff_Entry" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
  /*  th, td {


font:normal 14px/16px arial ;
}

 .test .ajax__calendar_body 
    {
      width:400px;
      height:100px;
      padding:20px;
    }
    
    .test .ajax__calendar_container 
    {padding:10px;position:absolute;cursor:default;width:180px;font-size:15px;text-align:center;font-family:tahoma,verdana,helvetica;background-color: lemonchiffon;border:1px solid #646464;
     
     
   } */
      
        
        
        .quick_enquiry_box_ddl1{
	width:110px;
	padding:4px 0 4px 6px;
	border:1px solid #cccccc;
	background:#dddddd url(images/input_bg1.png) repeat-x;
	font:normal 12px/18px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#313131;
	margin:2px 0px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border-radius:2px;
}     
    
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" align="center" width="90%">
       
        <tr>
            <td align="left">
                Name :</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px" TabIndex="1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Employee name" 
                    ValidationGroup="a">*</asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                </cc1:ValidatorCalloutExtender>
            </td> 
            <td align="left">Qualification :</td>
              <td align="left">
                <asp:TextBox ID="TextBox12" runat="server" 
                    ontextchanged="TextBox12_TextChanged" Width="250px" TabIndex="11"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="Enter Qualification" 
                    ValidationGroup="a">*</asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator7_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator7">
                </cc1:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td> 
            <td align="left">&nbsp;</td>
              <td align="left">
                  &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                Address :</td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="250px" 
                    TabIndex="2"></asp:TextBox>
                </td> 
            <td align="left">Date of Birth :</td>
              <td align="left">
                  <table>
                      <tr>
                          <td  style="border:none;">
                              <asp:DropDownList ID="ddlday" runat="server" CssClass="quick_enquiry_box_ddl1" 
                                  TabIndex="12" Width="82px">
                                  <asp:ListItem Value="0">--Select--</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                          <td  style="border:none;">
                              <asp:DropDownList ID="ddlmonth" runat="server" 
                                  CssClass="quick_enquiry_box_ddl1" Width="82px">
                                  <asp:ListItem Value="0">--Select--</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                          <td  style="border:none;">
                              <asp:DropDownList ID="ddlyr" runat="server" CssClass="quick_enquiry_box_ddl1" 
                                  Width="82px">
                                  <asp:ListItem Value="0">--Select--</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                      </tr>
                  </table>
            </td>
        </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td align="left">&nbsp;</td>
              <td align="left">
                  &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                Father&#39;s Name :</td>
            <td align="left">
                <asp:TextBox ID="TextBox4" runat="server" Width="250px" 
                    TabIndex="3"></asp:TextBox>
            </td>
            <td align="left">Last Organization Name :</td>
              <td align="left" width="300">
         
               
                
               
                <asp:TextBox ID="TextBox14" runat="server" TabIndex="13" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox14" ErrorMessage="Enter Last Organization" 
                    ValidationGroup="a">*</asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator8_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator8">
                </cc1:ValidatorCalloutExtender>
         
               
                
               
            </td>
        </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
              <td align="left">
                  &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                Mobile Number :</td>
            <td align="left">
                <asp:TextBox ID="TextBox6" runat="server" Width="250px" TabIndex="9"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox6_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox6">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage=" Enter Contact No" 
                    ValidationGroup="a">*</asp:RequiredFieldValidator>
            </td>
            <td align="left">Last Designation :</td>
              <td align="left">
                <asp:TextBox ID="TextBox9" runat="server" TabIndex="14" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Enter Designation" 
                    ValidationGroup="a">*</asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator6">
                </cc1:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
             <td align="left">&nbsp;</td>
              <td align="left">
                  &nbsp;</td>
              </tr>
        <tr>
            <td align="left">
                Alternate Mobile No :</td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" Width="250px" TabIndex="4"></asp:TextBox>
                  <cc1:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" 
                      runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox3">
                  </cc1:FilteredTextBoxExtender>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                      ControlToValidate="TextBox3" ErrorMessage="Enter present pincode" 
                      ValidationGroup="a">*</asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                      runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                  </cc1:ValidatorCalloutExtender>
            </td>
             <td align="left">Experience :</td>
              <td align="left">
                <asp:TextBox ID="TextBox13" runat="server" ontextchanged="TextBox13_TextChanged" 
                      TabIndex="15" Width="250px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                      ControlToValidate="TextBox13" ErrorMessage="Enter Total exprence" 
                      ValidationGroup="a">*</asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator13_ValidatorCalloutExtender" 
                      runat="server" Enabled="True" TargetControlID="RequiredFieldValidator13">
                  </cc1:ValidatorCalloutExtender>
            </td>
              </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
             <td align="left">&nbsp;</td>
              <td align="left">
                  &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                Country :</td>
            <td align="left">
                <asp:TextBox ID="TextBox10" runat="server" Width="250px" TabIndex="6"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                      ControlToValidate="TextBox10" ErrorMessage="Enter Country" ValidationGroup="a">*</asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator11_ValidatorCalloutExtender" 
                      runat="server" Enabled="True" TargetControlID="RequiredFieldValidator11">
                  </cc1:ValidatorCalloutExtender>
            </td>
             <td align="left">Date of Joining :&nbsp;&nbsp;&nbsp;</td>
              <td align="left">
                <asp:TextBox ID="TextBox11" runat="server" TabIndex="16" Width="250px"></asp:TextBox>
                 <%-- <cc1:MaskedEditExtender ID="TextBox11_MaskedEditExtender" runat="server" 
                      CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                      CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                      CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                      Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox11">
                  </cc1:MaskedEditExtender>--%>
                  <cc1:CalendarExtender ID="TextBox11_CalendarExtender" runat="server"  
                      Enabled="True" TargetControlID="TextBox11" Format="dd/MM/yyyy" 
                      PopupButtonID="Image1">
                  </cc1:CalendarExtender>
                  <asp:Image ID="Image1" runat="server" ImageUrl="~/admin/images/calendar.jpg" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                      ControlToValidate="TextBox11" ErrorMessage="Enter Doj" ValidationGroup="a">*</asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator12_ValidatorCalloutExtender" 
                      runat="server" Enabled="True" TargetControlID="RequiredFieldValidator12">
                  </cc1:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
             <td align="left">
                 &nbsp;</td>
              <td align="left">
                  &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                Gender :</td>
            <td align="left">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="250px" 
                    TabIndex="7">
                    <asp:ListItem Value="0">---Select---</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                      ControlToValidate="DropDownList1" ErrorMessage="Select gender" 
                      ValidationGroup="a">*</asp:RequiredFieldValidator>
                  <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator10_ValidatorCalloutExtender" 
                      runat="server" Enabled="True" TargetControlID="RequiredFieldValidator10">
                  </cc1:ValidatorCalloutExtender>
            </td>
             <td align="left"> Emp Id :</td>
              <td align="left">
                  <asp:TextBox ID="TextBox15" runat="server" TabIndex="17" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
             <td align="left">
                 &nbsp;</td>
              <td align="left">
                  &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                Catagory :</td>
            <td align="left">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Width="300px" TabIndex="8" 
                    RepeatLayout="Flow">
                    <asp:ListItem Selected="True">General &nbsp;</asp:ListItem>
                    <asp:ListItem>SC  &nbsp; </asp:ListItem>
                    <asp:ListItem>ST  &nbsp;</asp:ListItem>
                    <asp:ListItem>OBC  &nbsp;</asp:ListItem>
<asp:ListItem>Other</asp:ListItem>
                </asp:RadioButtonList>
            </td>
             <td align="left">Designation :</td>
              <td align="left">
                  <asp:TextBox ID="TextBox16" runat="server" TabIndex="19" 
                      Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
             <td align="left">&nbsp;</td>
              <td align="left">
                  &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                Email Id :</td>
            <td align="left">
                <asp:TextBox ID="TextBox8" runat="server" Width="250px" TabIndex="10"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Enter correct email?" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="a">*</asp:RegularExpressionValidator>
                <cc1:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
                </cc1:ValidatorCalloutExtender>
            </td>
             <td align="left">Photo :</td>
              <td align="left">
                  <asp:FileUpload ID="FileUpload1" runat="server" TabIndex="18" Width="250px" />
            </td>
        </tr>
        <tr>
            <td colspan="4" height="15">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" height="60">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    ValidationGroup="a" BackColor="Yellow" BorderColor="Black" 
                    ForeColor="Black" Height="43px" Width="79px" />
                &nbsp;<asp:Button ID="btn_udt" runat="server" Text="Update" onclick="btn_udt_Click" 
                    BackColor="Yellow" BorderColor="Black" ForeColor="Black" Height="43px" 
                    Width="79px" />&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" 
                    BackColor="Yellow" BorderColor="Black" 
                    ForeColor="Black" Height="43px" Width="79px" />
                  <asp:Label ID="msg" runat="server"></asp:Label>
            </td>
        </tr>
              
    </table>
</asp:Content>

