
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Admin_Report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function disablestatusbar() {
            window.document.statusbar.enable = false;
        }
</script>
    <style type="text/css">
        .style1
        {
           font-weight: 700;
            margin: 0;
            padding: 0;
    
            
            
            
        }
        .btn
        {
    padding:1px 0 1px 0;
	margin:0px;
	color:#8D7E15;
	<%--background:url(../images/bg.jpg) fixed;--%>
	font:0.75em/1.33 Arial, Helvetica, sans-serif;  
            
            
            }
    </style>
    <%--<link href="css/admin.css" rel="stylesheet" type="text/css" />--%>

</head>
<body onload="disablestatusbar()">
    <form id="form1" runat="server">
    <div align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">

    <Columns>
   
    <asp:TemplateField>
    <HeaderTemplate>SALARY SLIP</HeaderTemplate>
    <ItemTemplate>
    <table width="100%">
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
    </div>
    <p align="center">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Print" />
        </p>
    </form>
</body>
</html>
