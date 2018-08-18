<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Otherincome_head.aspx.cs" Inherits="admin_Otherincome_head"  EnableEventValidation="false"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                
            
/*  th, td {
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
     
     
   } 
        */
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="1" align="center" width="90%">
    <tr>
        <td width="100">
                <asp:Label ID="Label7" runat="server" CssClass="innerlbls" Text="Source"></asp:Label>
            :</td>
        <td align="left" width="260">
         
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                Width="250px">
                </asp:DropDownList>

          
        </td>
        <td align="left" width="100">
         
                &nbsp;</td>
        <td>
            Date:</td>
        <td  align="left">
        <table>
        <tr>
        <td> <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
           <%-- <cc1:MaskedEditExtender ID="TextBox2_MaskedEditExtender" runat="server" 
                CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox2">
            </cc1:MaskedEditExtender>--%>
            <cc1:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" 
                Enabled="True" TargetControlID="TextBox2" Format="dd/MM/yyyy" 
                PopupButtonID="Image1">
            </cc1:CalendarExtender></td>
          <td> <asp:Image ID="Image1" runat="server" Height="20px" Width="20px" 
                ImageAlign="Left" ImageUrl="~/admin/images/calendar.jpg" /></td>
        </tr>
        
        </table>
           
                     

          
        </td>
    </tr>
    <tr>
    <td>&nbsp;</td>
      <td align="center">And</td>
      <td align="center">&nbsp;</td>
      <td>&nbsp;</td>
      <td align="left">OR</td>
    </tr>
    <tr>
    <td>Name:</td>
      <td align="left">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged" 
                Width="250px">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>

          
        </td>
      <td align="center">
                OR</td>
      <td>Month:</td>
      <td align="justify">
            
            
            <asp:DropDownList ID="DropDownList1" runat="server" 
              onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="250px">
                <asp:ListItem Value="0">---Select Month----</asp:ListItem>
                <asp:ListItem Value="01">Jan</asp:ListItem>
                <asp:ListItem Value="02">Feb</asp:ListItem>
                <asp:ListItem Value="03">Mar</asp:ListItem>
                <asp:ListItem Value="04">Apr</asp:ListItem>
                <asp:ListItem Value="05">May</asp:ListItem>
               <asp:ListItem Value="06">Jun</asp:ListItem>
                <asp:ListItem Value="07">Jul</asp:ListItem>
                <asp:ListItem Value="08">Aug</asp:ListItem>
                <asp:ListItem Value="09">Sep</asp:ListItem>
                <asp:ListItem Value="10">Oct</asp:ListItem>
                <asp:ListItem Value="11">Nov</asp:ListItem>
                <asp:ListItem Value="12">Dec</asp:ListItem>
            </asp:DropDownList>

          
         </td>
    </tr>
    <tr>
    <td>&nbsp;</td>
      <td align="center">&nbsp;</td>
      <td align="center">&nbsp;</td>
      <td>&nbsp;</td>
      <td align="justify">And / OR</td>
    </tr>
     <tr>
    <td>&nbsp;</td>
      <td align="left">
            
            
                <table>
                <tr>
                <td  style="border:none;">&nbsp;</td>
                  <td  style="border:none;">
                      &nbsp;</td>
                </tr>
                
                </table>
         </td>
      <td align="left">
            
            
                &nbsp;</td>
      <td>
            
            
                Year:</td>
      <td align="left">
            
            
          <asp:DropDownList ID="DropDownList2" runat="server" Width="250px">
              <asp:ListItem Value="0">---Select Year---</asp:ListItem>
          </asp:DropDownList>
         </td>
    </tr>
     <tr>
    <td align="center" colspan="5" height="60" style="padding-right:150px;">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
              BackColor="Yellow" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" 
              Height="43px" Width="80px" />
              &nbsp;
               <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Excel" 
              BackColor="Yellow" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" 
              Height="43px" Width="80px" />
          
         &nbsp;
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" 
              BackColor="Yellow" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" 
              Height="43px" Width="80px" />

          
         </td>
    </tr>
    <tr>
        <td colspan="5" style="border:none;">
            
            
          <asp:HiddenField ID="HiddenField2" runat="server" />
         </td>
    </tr>
    <tr>
        <td colspan="5" style="border:none;">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Name" onrowdatabound="GridView1_RowDataBound" GridLines="None">
            <Columns>
                <asp:TemplateField>
                <ItemTemplate>
                <table width="600" frame="border" style="border-right-style: solid; border-left-style: solid">

           
        <tr>
        <td colspan="2" >
        <table width="100%">
        <tr style="height: 100%">
        <td align="left">
<%--<asp:Image ID="Image1" runat="server" ImageUrl="~/Admin/images/buddasalon.JPG" />--%>
          
            
            
            
            </td>
        <td></td>
        <td align="right">
          <%--  <asp:Image ID="Image2" runat="server" ImageUrl="barcode.jpg" />--%>
        </td>
        </tr>
        
        </table>

        </td>
        
        </tr>
        <%--<tr ><td colspan="2" style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #000000; font-weight: bold;" align="center">Payment Receipt</td>
        </tr>--%>
         <tr>
        <td></td>
        <td></td>
        </tr>
        <tr  >
        <td width="400px" style="border-right-style: solid; border-right-width: 1px; border-right-color: black" rowspan="0" valign="top">
        <table align="left" >
        <tr align="left" >
        <td width="250">Source:-</td>
        <td width="300">
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Sourcehdnm") %>'></asp:Label>
            <%--<%#GridView1.Rows.Count + 1%>--%>
            
            </td>
        </tr>
        <tr align="left">
        <td>Name:-</td>
        <td>
            <asp:Label ID="Label9" runat="server" Text='<%#Eval("Name") %>'></asp:Label></td>
        </tr>
        <tr align="left">
        <td>Amount:-</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Total_amount","{0:n}") %>'></asp:Label></td>
        </tr>
         <%--<tr align="left">
        <td width="250">Received From:-</td>
        <td>
        <p>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("address") %>'></asp:Label></p></td>
        </tr>
        <tr align="left">
        <td width="250">Mobile No:-</td>
        <td>
        <p>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("mob") %>'></asp:Label></p></td>
        </tr>
     <tr align="left">
        <td>Payment Mode:-</td>
        <td>
            <asp:Label ID="Label4" runat="server" Text='<%#Eval("payment_type") %>'></asp:Label></td>
        </tr>--%>
        </table>
        
        
        </td>
        <td width="400px" align="left" rowspan="0" valign="top">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" GridLines="None" ShowFooter="True" onrowdatabound="GridView2_RowDataBound">
            <Columns>
            <asp:TemplateField>
            <HeaderTemplate>
            <table>
            <tr>
            
            <td align="left" width="200">Date</td>
              <td align="left" width="120"></td>
            <td align="right" width="100">Payment</td>
            </tr>
            
            </table>
            
            </HeaderTemplate>
            <ItemTemplate>
            <table>
            <tr>
          
            <td align="left" width="200">
            <asp:Label ID="Label11" runat="server" Text='<%#Eval("date") %>'></asp:Label>
            </td>
            <td  align="right" width="100">
            <asp:Label ID="Label12" runat="server" Text='<%#Eval("payment","{0:n}") %>'></asp:Label>
            
            </td>

            </tr>
           
            </table>




            
            </ItemTemplate>
            <FooterTemplate>
              <table style="border-top-style: solid">
            <tr style="border-style: none none solid none; border-width:1px">
           
            <td align="left" width="200">Total Payment</td>
            <td align="right" width="100">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>

            </td>
            </tr>
            <tr>
            
            <td align="left" width="200">Due</td>
            <td align="right" width="100">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

            </td>
            
            </tr>
            
            </table>
            
            </FooterTemplate>
            
            </asp:TemplateField>
           
            </Columns>
            </asp:GridView>






        
        
        </td>
        </tr>
       <%-- <tr>
        <td  height="20" style="border-top-style:none; border-top-width: 1px; border-top-color: black;"  colspan="2" align="center">
           
        </td>
      


        </tr>--%>
       <%--<tr>
        <td  height="50" style="border-top-style:none; border-top-width: 1px; border-top-color: black;"  colspan="2" align="center">
                    
        </td>
      


        </tr>--%>
        </table>
                
                
                </ItemTemplate>
                
                
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        </td>
    </tr>
    <tr>
        <td colspan="5" style="border:none;">
            &nbsp;</td>
    </tr>




   
    <tr>
        <td colspan="5" style="border:none;">
            &nbsp;</td>
    </tr>




   
    <tr>
        <td colspan="5" style="border:none;">
            &nbsp;</td>
    </tr>




   
    <tr>
        <td colspan="5" style="border:none;">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" Width="800px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="headernm" HeaderText="Source">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="Name">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Amount" DataFormatString="{0:n}" HeaderText="Amount">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="payment" DataFormatString="{0:n}" 
                        HeaderText="Payment">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="due" DataFormatString="{0:n}" HeaderText="Due">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="payment_type" HeaderText="Payment Type">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="date" HeaderText="Date">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </td>
    </tr>




   
    <tr>
        <td colspan="5" style="border:none;">
            &nbsp;</td>
    </tr>




   
    <tr>
        <td colspan="5" style="border:none;">
            &nbsp;</td>
    </tr>




   
    <tr>
        <td colspan="5" style="border:none;">
            &nbsp;</td>
    </tr>




   
    </table>
</asp:Content>

