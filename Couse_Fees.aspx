<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Couse_Fees.aspx.cs" Inherits="Couse_Fees" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
    .innerlbls
    {}
        </style>
<style type="text/css">
        
        /*th, td {
border:1px solid  #7bb5ca;

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
     
     
   }*/


    
     
   /*.td
        {
           font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: 15px; color: #000000;
        height: 23px;
        width: 85px;
    }*/


    .style4
    {
    }
    .style6
    {
        font-family: 'Times New Roman', Times, serif;
        font-weight: bold;
        font-size: 15px;
        color: #000000;
        width: 100px;
    }


    .style9
    {
        width: 92px;
    }
    

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="1" cellspacing="1" align="center" >
        <tr>
            <td align="left" >
                <asp:Label ID="Label6" runat="server" CssClass="innerlbls" 
                    Text="Reg Id"></asp:Label>
                :</td>
            <td>
                <asp:TextBox ID="txtregid" runat="server" CssClass="tbox" AutoPostBack="True" 
                    ontextchanged="txtregid_TextChanged" Width="250px" Height="30px"></asp:TextBox>
            </td>
            <td width="150px" >
                <asp:Label ID="lblpay0" runat="server" CssClass="innerlbls" Text="Payment Type"></asp:Label>
                :</td>
            <td width="350">
                
                <asp:RadioButtonList ID="rbtrupee" runat="server" RepeatDirection="Horizontal" 
                    onselectedindexchanged="rbtrupee_SelectedIndexChanged" AutoPostBack="True" 
                    Width="330px" RepeatLayout="Flow">
                    <asp:ListItem Selected="True">Cash &nbsp;</asp:ListItem>
                    <asp:ListItem>Cheque &nbsp;</asp:ListItem>
                    <asp:ListItem>DD &nbsp;</asp:ListItem>
                    <asp:ListItem>NEFT &nbsp;</asp:ListItem>
                    <asp:ListItem>RTGS &nbsp;</asp:ListItem>
                    <asp:ListItem>IMPS &nbsp;</asp:ListItem>
                </asp:RadioButtonList>
                
            </td>
        </tr>
        <tr>
            <td align="left" class="style4"></td>
            <td height="15"></td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label7" runat="server" CssClass="innerlbls" Text="Name"></asp:Label>
                :</td>
            <td>
                <asp:TextBox ID="txtsname" runat="server" CssClass="tbox" Width="250px" 
                    Height="30px"></asp:TextBox>
            </td>
            <td >
                <asp:Label ID="Label10" runat="server" Text="Payment Details:" Width="142%"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtcdno" runat="server" CssClass="tbox" TextMode="MultiLine" 
                    Width="250px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" class="style4"></td>
            <td></td>
            <td class="style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="Label8" runat="server" CssClass="innerlbls" Text="Training  Fee"></asp:Label>
                :</td>
            <td>
                <asp:TextBox ID="txtcorcefee" runat="server" CssClass="tbox" Width="250px" 
                    Height="30px">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="txtcorcefee_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="txtcorcefee"  FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td >
                <asp:Label ID="Label11" runat="server" CssClass="innerlbls" Text="Paid By:"></asp:Label>
            </td>
            <td align="left">
            
          <%--  <table>
            <tr>
            <td style="border:none;" align="left">
                
                </td>
            <td style="border:none;">
                &nbsp;</td>
            </tr>
            
            </table>--%>
                
                <asp:TextBox ID="txtremark" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td align="left" class="style4"></td>
            <td></td>
            <td class="style9">&nbsp;</td>
            <td>
            
                
                
            </td>
        </tr>
        <tr>
            <td align="left" >
                <asp:Label ID="lblpay" runat="server" Text="Payment"></asp:Label>
                :</td>
            <td>
                <asp:TextBox ID="txtpay" runat="server" CssClass="tbox" AutoPostBack="True" 
                    ontextchanged="txtpay_TextChanged" Width="250px" Height="30px">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="txtpay_FilteredTextBoxExtender" runat="server" 
                    Enabled="True" TargetControlID="txtpay"  FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td >
                <asp:Label ID="lblpay1" runat="server" CssClass="innerlbls" Text="Due :"></asp:Label>
                </td>
            <td>
                
                <asp:TextBox ID="txtdue" runat="server" CssClass="tbox" Width="250px" 
                    Height="30px">00.00</asp:TextBox>
                
                <cc1:FilteredTextBoxExtender ID="txtdue_FilteredTextBoxExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdue" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
                
            </td>
        </tr>
        
       
        <tr>
            <td align="left" class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td align="left" >
                Date:</td>
            <td>
            <table>
            <tr><td style="border:none;"><asp:TextBox ID="TextBox1" runat="server" 
                    Width="250px" Height="30px"></asp:TextBox>
               <%-- <cc1:MaskedEditExtender ID="TextBox1_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox1">
                </cc1:MaskedEditExtender>--%>
                <cc1:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox1" 
                    PopupButtonID="Image1">
                </cc1:CalendarExtender></td>
            <td style="border:none;"><asp:Image ID="Image1" runat="server" ImageUrl="~/admin/images/calendar.jpg" /></td>
            </tr>
            
            </table>
                
                
            </td>
            <td>
                <asp:Label ID="lblpay2" runat="server" CssClass="innerlbls" 
                    Text=" Instalments:"></asp:Label>
                </td>
            <td>
            
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tbox" TextMode="MultiLine" 
                    Width="250px"></asp:TextBox>
                
            </td>
        </tr>
        
        <tr>
            <td align="center" class="style4" colspan="4">
            <table width="100%">
            <tr>
            <td align="right" width="50%" height="40">  
            
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
            
                </td>
            <td  Width="50%" align="left"> &nbsp;</td>
            </tr>
            
            <tr>
            <td align="right" width="50%">  <asp:Button ID="btnpaid" runat="server" 
                    CssClass="td" onclick="btnpaid_Click" 
                    Text="Submit" Height="40px" Width="80px" BackColor="Yellow" 
                    BorderColor="Black" BorderStyle="Solid" />&nbsp;
                    
                    </td>
            <td  Width="50%" align="left"> 
                    
                    <asp:Button ID="Button1" runat="server" 
                    CssClass="td" onclick="Button1_Click" 
                    Text="Reset" Height="40px" Width="80px" BackColor="Yellow" 
                    BorderColor="Black" BorderStyle="Solid" />
                <asp:Label ID="lblms" runat="server" CssClass="errorlbls"></asp:Label></td>
            </tr>
            
            </table>
            
              
            
               
            </td>
        </tr>
        
        <tr>
            <td align="center" class="style4" colspan="4">

            <table width="100%">
            <tr>
            <td width="50%" align="right">
            
                <asp:Label ID="Label12" runat="server" Text="No. of Installment:" 
                    Visible="False"></asp:Label>
                <asp:TextBox ID="txtno_install" runat="server" AutoPostBack="True" 
                    ontextchanged="txtno_install_TextChanged" Width="250px" Visible="False"></asp:TextBox>
            
                <asp:Button ID="btnprint" runat="server" CssClass="td" Text="Print" 
                    onclick="btnprint_Click" Height="40px" BackColor="Yellow" Width="80px" 
                        BorderColor="Black" BorderStyle="Solid" />
                </td>
            <td width="50%">
                <asp:Label ID="Label13" runat="server" Text="Per Installment:" Visible="False"></asp:Label>
            <asp:TextBox ID="txt_per_install" runat="server" Width="250px" Visible="False">00.00</asp:TextBox>
            
                </td>
            </tr>
            </table>
            
            </td>
        </tr>
        <tr>
            <td align="left" class="style4" colspan="4"  style="border:none;">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style4" colspan="4"  style="border:none;">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
               <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:TemplateField HeaderText="SN" >
                       <ItemTemplate>
                           <%#GridView1.Rows.Count + 1%>
                       </ItemTemplate>
                       <HeaderStyle HorizontalAlign="Center" />
                       <ItemStyle HorizontalAlign="Center" />
                   </asp:TemplateField>
                   <asp:BoundField DataField="Reg_id" HeaderText="Id" >
                   <HeaderStyle HorizontalAlign="Center" />
                   <ItemStyle HorizontalAlign="Center" />
                   </asp:BoundField>
                   <asp:BoundField DataField="Snm" HeaderText="Name"  >
                   <HeaderStyle HorizontalAlign="Center" />
                   <ItemStyle HorizontalAlign="Center" />
                   </asp:BoundField>
                   <asp:BoundField DataField="course_fee" HeaderText="Course Fee" 
                            DataFormatString="{0:n}"  >
                   <HeaderStyle HorizontalAlign="Center" />
                   <ItemStyle HorizontalAlign="Center" />
                   </asp:BoundField>
                   <asp:BoundField DataField="paidmoney" HeaderText="Payment" 
                            DataFormatString="{0:n}"  >
                   <HeaderStyle HorizontalAlign="Center" />
                   <ItemStyle HorizontalAlign="Center" />
                   </asp:BoundField>
                   <asp:BoundField DataField="due" HeaderText="Due" DataFormatString="{0:n}"  >
                   <HeaderStyle HorizontalAlign="Center" />
                   <ItemStyle HorizontalAlign="Center" />
                   </asp:BoundField>


                <%--   <asp:BoundField DataField="remarks" HeaderText="" />--%>



                   <asp:TemplateField HeaderText="Paid By">
                   <ItemTemplate>
                   <p>
                       <asp:Label ID="Label2" runat="server" Text='<%#Eval("remarks")%>'></asp:Label>
                   
                   </p>
                   
                   </ItemTemplate>
                   
                       <HeaderStyle HorizontalAlign="Center" />
                       <ItemStyle HorizontalAlign="Center" />
                   
                   </asp:TemplateField>



                   <asp:BoundField DataField="date" HeaderText="Date"  >
                   <HeaderStyle HorizontalAlign="Center" />
                   <ItemStyle HorizontalAlign="Center" />
                   </asp:BoundField>
                   <asp:TemplateField HeaderText ="Instalments">
                   <ItemTemplate>
                   <asp:Label runat="server" Text='<%#Eval("Description")%>'></asp:Label>
                   
                   </ItemTemplate>
                       
                   
                   
                       <HeaderStyle HorizontalAlign="Center" />
                       <ItemStyle HorizontalAlign="Center" />
                       
                   
                   
                   </asp:TemplateField>
               </Columns>
               <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
               <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
           </asp:GridView>
      
            
                    
                </td>
        </tr>
        </table>
</asp:Content>

