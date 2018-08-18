<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Registrationsshow.aspx.cs" Inherits="admin_Registrationsshow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                
        
      /*   th, td {
border:1px solid  #7bb5ca;
padding:6px;
font:normal 14px/16px arial ;
}
        
   
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
    */
    
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="1" cellspacing="1" align="center" width="90%">
        
        <tr>
            <td>
                Registration Id:</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
                    Width="200px"></asp:TextBox>
            </td>
            <td align="center" width="50">
                OR</td>
            <td>
                Name:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="200px"></asp:TextBox>
            </td>
            <td width="40" align="center">
                And</td>
            <td>
                DOB:</td>
            <td><table>
            <tr>
            <td  style="border:none;"><asp:DropDownList ID="DropDownList1" runat="server" 
                    CssClass="quick_enquiry_box_ddl1" Width="80px">
                <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList></td>
             <td  style="border:none;">  
                 <asp:DropDownList ID="DropDownList2" runat="server" 
                    CssClass="quick_enquiry_box_ddl1" Width="80px">
                 <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList></td>
              <td  style="border:none;">
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    CssClass="quick_enquiry_box_ddl1" Width="80px">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            
            </table>
                
              
            </td>
        </tr>
        <tr>
            <td colspan="8">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="8">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
                    BackColor="Yellow" BorderColor="Black" BorderStyle="Solid" Height="40px" 
                    Width="80px" />
            &nbsp;<asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Reset" 
                    BackColor="Yellow" BorderColor="Black" BorderStyle="Solid" Height="40px" 
                    Width="80px" />
            </td>
        </tr>
        <tr>
            <td colspan="8" style="border:none;"
            >
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="8" style="border:none;">

                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    Height="50px" Width="400px" BorderColor="Black" BorderStyle="Solid" 
                    ForeColor="Black" GridLines="None" DataKeyNames="Stud_id" 
                    onpageindexchanging="DetailsView1_PageIndexChanging">
                    <Fields>
                        <asp:TemplateField>
                        <ItemTemplate>
                        <table>
                        
                        
                          <tr>
                        <td width="200" align="left">
                         Registration Id:
                        
                        </td>
                        <td >
                            <asp:Label ID="Label9" runat="server" Text='<%#Eval("Reg_id") %>'></asp:Label>
                        </td>
                        </tr>
                        <tr>
                        <td width="200"  align="left">
                        Name:
                        
                        </td>
                        <td >
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Stud_nm") %>'></asp:Label>
                        </td>
                        </tr>
                      
                         <tr>
                        <td colspan="2"></td>
                        </tr>

                        <tr>
                        <td  align="left">
                        Father's Name:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Father_nm") %>'></asp:Label>
                        </td>
                        </tr>
                        
                        <tr>
                        <td  align="left">
                        Mother's Name:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("mother_nm") %>'></asp:Label>
                        </td>
                        </tr>
                        <tr>
                        <td colspan="3"></td>
                        </tr>

                            <tr>
                        <td  align="left">
                        DOB:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Dob") %>'></asp:Label>
                        </td>
                        </tr>
                        <tr>
                        <td colspan="3"></td>
                        </tr>
                           <tr>
                        <td  align="left">
                        Address:
                        
                        </td>
                        <td>
                        <p>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Address") %>'></asp:Label></p>
                        </td>
                        </tr>
                        <tr>
                        <td colspan="3"></td>
                        </tr>

                        <tr>
                        <td colspan="3"></td>
                        </tr>

                           <tr>
                        <td  align="left">
                        Mobile No:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("mobile_no") %>'></asp:Label>
                        </td>
                        </tr>
                                                   <tr>
                        <td  align="left">
                        Alternate Mobile No:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text='<%#Eval("Alternate_Mobile_No") %>'></asp:Label>
                        </td>
                        </tr>
                        <tr>
                        <td colspan="3"></td>
                        </tr>
                            <tr>
                        <td  align="left">
                     Email Id:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("Landline_no") %>'></asp:Label>
                        </td>
                        </tr>
                        <tr>
                        <td colspan="3"></td>
                        </tr>

                           <tr>
                        <td  align="left">
                        Qualification:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text='<%#Eval("Higher_Quali") %>'></asp:Label>
                        </td>
                        </tr>
                        <tr>
                        <td colspan="3"></td>
                        </tr>
                       
                             <tr>
                        <td  align="left">
                       Percentage:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text='<%#Eval("percentage") %>'></asp:Label>
                        </td>
                        </tr>
                        <tr>
                        <td colspan="3"></td>
                        </tr>

                                 <tr>
                        <td  align="left">
                       Course Name:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text='<%#Eval("Course_nm") %>'></asp:Label>
                        </td>
                        </tr>
                        <tr>
                        <td colspan="3"></td>
                        </tr>
                        
                                 <tr>
                        <td  align="left">
                       Total Course fee:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text='<%#Eval("Total_Course_fees","{0:n}") %>'></asp:Label>
                        </td>
                        </tr>
                        <tr>
                        <td colspan="3"></td>
                        </tr>
                          <%--      <tr>
                        <td>
                       Detail:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text='<%#Eval("chq_dd_no") %>'></asp:Label>
                        </td>
                        </tr>
                        <tr>
                        <td colspan="3"></td>
                        </tr>
                      <tr>
                        <td>
                      Per installments:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text='<%#Eval("per_installments") %>'></asp:Label>
                        </td>
                        </tr>--%>
                        <tr>
                        <td colspan="3"></td>
                        </tr>
                              <tr>
                        <td  align="left">
                      Date:
                        
                        </td>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text='<%#Eval("date","{0:dd/MM/yyyy}") %>'></asp:Label>
                        </td>
                        </tr>
                        <tr>
                        <td colspan="3"></td>
                        </tr>

                                   <tr>
                        <td align="right" width="150"> 

                        <asp:ImageButton ID="Edit" runat="server" ImageUrl="~/Sadmin/icon/edit.png"
                  
                      Width="40px" Height="40px" 
                    PostBackUrl='<%#Eval("Stud_id","Student_Reg.aspx?id={0}") %>' />  &nbsp;

                       <%-- <asp:Button ID="Button3" runat="server"  BackColor="#FFDF55" PostBackUrl='<%#Eval("Stud_id","Student_Reg.aspx?id={0}") %>' BorderStyle="Solid" BorderColor="Black" Text="Edit" />--%>



</td>
                        <td align="left" width="300"><asp:Button ID="Button2" runat="server" Text="Payment Details"  BackColor="#FFDF55" PostBackUrl='<%#Eval("Reg_id","Paymentdtl.aspx?idd={0}") %>' BorderStyle="Solid" BorderColor="Black" />
</td>
                        </tr>

                        </table>
                       
                        </ItemTemplate>
                        
                        
                        </asp:TemplateField>
                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
        </table>
</asp:Content>

