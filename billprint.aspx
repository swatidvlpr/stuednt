<%@ Page Language="C#" AutoEventWireup="true" CodeFile="billprint.aspx.cs" Inherits="admin_billprint" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:FormView ID="FormView1" runat="server" BorderColor="Black" 
            BorderStyle="Solid" BorderWidth="1px">
        <ItemTemplate>
        <table width="600">

           
        <tr>
        <td colspan="2" >
       

        </td>
        
        </tr>
        <tr ><td colspan="2"  style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #000000; font-weight: bold;" align="center">Payment Receipt</td>
        </tr>
         <tr>
        <td></td>
        <td></td>
        </tr>
        <tr  >
        <td width="400px" style="border-right-style: solid; border-right-width: 1px; border-right-color: black" rowspan="0">
        <table align="left" >
        <tr align="left" >
        <td width="250">Receipt Id:-</td>
        <td width="300">
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Reciept_id") %>'></asp:Label></td>
        </tr>
        <tr align="left">
        <td width="250">Reg Id:-</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Reg_id") %>'></asp:Label></td>
        </tr>
        <tr align="left">
        <td>Name:-</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Snm") %>'></asp:Label></td>
        </tr>
      <tr align="left">
        <td>Course:</td>
        <td >
        
            <asp:Label ID="Label8" runat="server" Text='<%#Eval("Course_nm") %>'></asp:Label>
        
        </td>
        
        </tr>


         
        </table>
        
        
        </td>
        <td width="400px" align="left" rowspan="0" valign="top">
        <table align="left">

         <tr align ="left">
        <td>Amount Paid:</td>
        <td>
            <asp:Label ID="Label7" runat="server" Text='<%#Eval("paidmoney","{0:n}") %>'></asp:Label>
           
           <%--<%# Eval("currency", "{0:c}") %>--%>
         

            </td>
        </tr>


        <tr align="left">
        <td>Mode:-</td>
        <td>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("payment_type") %>'></asp:Label></td>
        </tr>
          <tr align ="left">
        <td>Paid by:</td>
        <td>
            <asp:Label ID="Label6" runat="server" Text='<%#Eval("remarks") %>'></asp:Label></td>
        </tr>
       
        <tr align ="left">
        <td width="400">Date:</td>
        <td width="200">
            <asp:Label ID="Label5" runat="server" Text='<%#Eval("date") %>'></asp:Label></td>
        </tr>

       
        
        </table>
        
        </td>
        </tr>
       <tr style="display:none;">
        <td  height="20" style="border-top-style: solid; border-top-width: 1px; border-top-color: black;"  colspan="2" align="center">
            <asp:Label ID="lbl_rupee_in_word" runat="server" Text="Label" ></asp:Label>
        </td>
        <%--<td height="50" style="border-top-style: solid; border-top-width: 1px; border-top-color: black;" ></td>--%>


        </tr>
       <tr style="display:none;">
        <td  height="50" style="border-top-style: solid; border-top-width: 1px; border-top-color: black;"  colspan="2" align="center">
                     "Received with loads of Thanks"
        </td>
        <%--<td height="50" style="border-top-style: solid; border-top-width: 1px; border-top-color: black;" ></td>--%>


        </tr>
        </table>
        
        
        </ItemTemplate>
       
        </asp:FormView>
       <asp:Button ID="Button1" runat="server" Text="Print" onclick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button2" runat="server" Text="Back" onclick="Button1_Click" 
            Visible="False" />
    </div>
    
    </form>
</body>
</html>
