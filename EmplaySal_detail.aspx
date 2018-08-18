<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="EmplaySal_detail.aspx.cs" Inherits="Admin_EmplaySal_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="JavaScript" >
     function OpenNewWP() {
         //newWin = window.open('OnlinePayments.aspx', 'form1', 'toolbar=no,status=no,menubar=no,location=center,scrollbars=no,resizable=no,height=500,width=350');
         //newWin = window.open('Report.aspx', 'form1', 'navigationbar=no,toolbar=no,status=no,menubar=no,location=center,scrollbars=yes,resizable=no,height=850,width=850');

         newWin = window.open('Report.aspx', 'form1', 'height=850,width=850,titlebar=0,statusbar=0;toolbar=0,location=0,screenx=0,screeny=0,directories=0,status=0,menuBar=0,scrollBars=yes,left=0,top=0,resizable=0');
         newWin.opener = top;

//         function openWindowNew( windowURL, windowName) {windowFeatures='width=518,height=500,toolbar=0,location=0,screenx=0,screeny=0,directories=0,status=0,menuBar=0,scrollBars=yes,left=0,top=0,resizable=0'
//          return window.open( windowURL, windowName, windowFeatures ) ; 
     }

      



</script>




 
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            height: 18px;
        }
        .style4
        {
            height: 27px;
        }
        .style5
        {
            width: 397px;
        }
        </style>
        
       
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentplaceHolder1" Runat="Server">
    <table width="80%" style="height: 300px" >
<tr>

<td width="200"></td>

<td>&nbsp;</td>
<td width="70"></td>
<td width="40">&nbsp;</td>
<td>&nbsp;</td>
<td></td>
<td>&nbsp;</td>
</tr>
<tr>

<td align="right" width="170">
    <asp:Label ID="Label5" runat="server" CssClass="innerlbls" 
                    Text="Salary Drawn:"></asp:Label></td>

<td align="right">&nbsp;</td>
<td><asp:DropDownList ID="ddlmonth" runat="server" CssClass="tbox" 
        onselectedindexchanged="ddlmonth_SelectedIndexChanged" Height="30px" 
        Width="250px">
    </asp:DropDownList></td>
<td>&nbsp;</td>
<td><asp:Label ID="Label18" runat="server" CssClass="innerlbls" 
                    Text="Employee Id:"></asp:Label></td>
    <td>&nbsp;</td>
    <td><asp:DropDownList ID="DropDownList1" runat="server" CssClass="tbox" 
        AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="30px" 
            Width="250px">
        <asp:ListItem Value="0">--Select Id---</asp:ListItem>
    </asp:DropDownList></td>
</tr>
<tr>

<td align="left">&nbsp;</td>

<td align="left">&nbsp;</td>
<td><asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="REPORT" Visible="False" BackColor="Yellow" BorderColor="Black" 
        BorderStyle="Solid" Height="40px" Width="80px" />
    </td>
<td>&nbsp;</td>
<td>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Search" BackColor="Yellow" BorderColor="Black" 
        BorderStyle="Solid" Height="40px" Width="80px" />
    </td>
    <td align="left">&nbsp;</td>
    <td align="left">&nbsp;</td>
</tr>


<tr>

<td colspan="7">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">

    <Columns>
   
    <asp:TemplateField>
    <HeaderTemplate>SALARY SLIP</HeaderTemplate>
    <ItemTemplate>
    <table width="120%">
    <tr>
    <td>
    <table >
    <tr>
    <td style="height: 90px">
    <table width="00%" style="height: 90px" cellspacing="15" >
    <tr>
<td align="left">Name of Employee:</td>
<td>
    <asp:Label ID="Label19" runat="server" Text='<%#Eval("Emp_Name") %>'></asp:Label></td>

</tr>
   <tr>
<td align="left">Designation:</td>
<td>
    <asp:Label ID="Label20" runat="server" Text='<%#Eval("Emp_Designation") %>'></asp:Label></td>

</tr>
      <tr>
<td align="left">Employee ID:</td>
<td>
    <asp:Label ID="Label21" runat="server" Text='<%#Eval("Emp_Reg_ID") %>'></asp:Label></td>

</tr>
      <tr>
<td align="left">Date of Joining:</td>
<td>
    <asp:Label ID="Label22" runat="server" Text='<%#Eval("Emp_DOJ") %>'></asp:Label></td>

</tr>
<tr>
    <td>Bank A/C No:----------</td>
    <td></td>
    </tr>
    <tr>
    
    <td></td>
    <td></td>
    </tr>
    <tr>
    
    <td></td>
    <td></td>
    </tr>

    </table>
    
    </td>
    <td width="80px"></td>
    
    <td>
    <table width="100%" style="height: 50px" cellspacing="15">
         <tr>
    <td>Payment Mode:----------</td>
    <td></td>
    </tr>
     <tr>
    <td>PF No.----------</td>
    <td></td>
    </tr>
     <tr>
    <td>Total Working Days:</td>
    <td><asp:Label ID="Label23" runat="server" Text='<%#Eval("total_working") %>'></asp:Label></td>
    </tr>
     <tr>
    <td>Worked for:</td>
    <td><asp:Label ID="Label24" runat="server" Text='<%#Eval("working_for") %>'></asp:Label></td>
    </tr>
     <tr>
    <td>UnPaid Leaves:</td>
    <td><asp:Label ID="Label26" runat="server" Text='<%#Eval("unpaid_leavs") %>'></asp:Label></td>
    </tr>
      <tr>
    <td>Paid Leaves:</td>
    <td><asp:Label ID="Label25" runat="server" Text='<%#Eval("total_leavs") %>'></asp:Label></td>
    </tr>
    </table>
    
    
    </td>
    </tr>
    
    </table>
    </td>
    <td></td>
    </tr>
    
    </table>
    <table width="100%">
    <tr>
    <td></td>
    <td></td>
    </tr>
    
    </table>
     

    <table class="style2">
    
        <tr>
            <td class="style5" style="font-family: Arial; font-size: medium">
                EARNINGS</td>
            <td style="font-family: Arial; font-size: medium">
                DEDUCTIONS</td>
        </tr>
        <tr>
        <td class="style5">
        
        <table cellspacing="15" width="100%">
                    <tr>
                        <td align="left" class="style4">
                           Basic
                                
                        </td>
                        <td class="style4">
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("Basic","{0:n}") %>'></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="style3" align="left">
                           HRA
                                
                        </td>
                        <td >
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("HRA","{0:n}") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Travel Allowance
                                
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text='<%#Eval("Travel_Allowance","{0:n}") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Other Allowances
                          
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Other_Allowances","{0:n}") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Bonus
                           
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Bonus","{0:n}")%>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Mobile Reimbursement
                            
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Mobile_Reimbursement","{0:n}") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Fixed Allowances
                            
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Fixed_Allowances","{0:n}") %>'></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td align="left" >Total
                           
                        </td>
                        <td align="left">
                           
                            <asp:Label ID="Label9" runat="server" Text='<%#Eval("Total_Salarry","{0:n}") %>'></asp:Label>
                        </td>
                    </tr>
                   
                </table></td>
        <td>
        <table   cellspacing="15" width="100%" style="height: 243px" >  <tr>
                                    <td align="left">
                                        Professional Tax</td>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text='<%#Eval("professional_tax","{0:n}")%>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        TDS</td>
                                    <td>
                                        <asp:Label ID="Label11" runat="server" Text='<%#Eval("TDS","{0:n}") %>'></asp:Label></td>
                                </tr>
                                   <tr>
                                    <td align="left">
                                        PF</td>
                                    <td>
                                        <asp:Label ID="Label12" runat="server" Text='<%#Eval("PF","{0:n}") %>'></asp:Label></td>
                                </tr>
                                   <tr>
                                    <td align="left">
                                       Advance</td>
                                    <td>
                                        <asp:Label ID="Label13" runat="server" Text='<%#Eval("Adv","{0:n}") %>'></asp:Label></td>
                                </tr>
                                   <tr>
                                    <td align="left">
                                        Leaves</td>
                                    <td>
                                        <asp:Label ID="Label14" runat="server" Text='<%#Eval("leavs_price","{0:n}") %>'></asp:Label></td>
                                </tr>
                                   <tr>
                                    <td align="left">
                                       Others</td>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Text='<%#Eval("other","{0:n}") %>'></asp:Label></td>
      
                                </tr>
                                <tr>
                                <td></td>
                                <td></td>
                                </tr>
                                 <tr>
                    <td></td>
                    <td></td>
                    </tr>
                                 <tr>
                        <td align="left" >Total
                           
                        </td>
                        <td align="left">
                            <asp:Label ID="Label16" runat="server" Text='<%#Eval("Sub_total","{0:n}") %>'></asp:Label>
                        </td>
                    </tr>
                 
                            </table></td>
        </tr>
        <tr>
        <td class="style5">
        <table width="100%">
       
        </table>
        </td>
        <td>
        <table width="100%">
       
                   
        </table>
        
        </td>
        </tr>
        <tr>
        <td align="left" colspan="2"><b>
            <span style="font-family: Arial; font-size: medium; color: #000066">Net Pay&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                ID="Label17" runat="server" Text='<%#Eval("Sub_total","{0:n}") %>'></asp:Label>
                        </span></b>(<asp:Label ID="Label27" runat="server" Text='<%#Eval("Sub_total_words","{0:n}") %>'></asp:Label>)</td>
        </tr>


    </table>
    
    </ItemTemplate>
    
    </asp:TemplateField>
    
    </Columns>
    </asp:GridView>
    <table width="100%">
    <tr>
    <td align="center">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Print" 
            Visible="False" Width="76px" />
        </td>
    
    </tr>
    
    </table>
    


    
    </td>
</tr>


</table>
    
    
    
</asp:Content>

