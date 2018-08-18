<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Debit_show.aspx.cs" Inherits="admin_Debit_show" EnableEventValidation="false" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
 
         
      /* th, td {
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
     
     
   } */
      
      
      
      
      
        .style2
        {
            width: 425px;
        }
        .style3
        {
        }
        .style4
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="1" cellspacing="1" align="center" width="90%">
        <tr>
            <td class="style3" style="color: #000000" align="right">
                Date:</td>
            <td align="left" style="color: #000000">
            <table>
            <tr>
            <td  width="200px"  style="border:none;" ><asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>

               <%-- <cc1:MaskedEditExtender ID="TextBox2_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox2">
                </cc1:MaskedEditExtender>--%>

                <cc1:CalendarExtender ID="TextBox2_CalendarExtender" runat="server"  
                    Enabled="True"  Format="dd/MM/yyyy" PopupButtonID="Image1" 
                    TargetControlID="TextBox2" >
                </cc1:CalendarExtender>

            </td>
            <td style="border:none;" > 
                <asp:Image ID="Image1" runat="server" Height="20px" Width="20px" 
                ImageAlign="Left" ImageUrl="~/admin/images/calendar.jpg" /></td>
           
            </tr>
            </table>
               
               
          
            </td>
            <td align="center" style="color: #000000" width="100">
                OR</td>
            <td align="center" style="color: #000000" class="style4" xml:lang="150">
                Month:</td>
            <td align="left" style="color: #000000" width="300">
             
         
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
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
            <td align="center" style="color: #000000" class="style2">
             
                And / OR </td>
            <td align="left" style="color: #000000">
             
                Year:</td>
            <td align="left" style="color: #000000">
             
         
          <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
              <asp:ListItem Value="0">---Select Year---</asp:ListItem>
          </asp:DropDownList>
               
          
            </td>
        </tr>
        <tr>
            <td class="style3" style="color: #000000" align="right">
                &nbsp;</td>
            <td align="left" style="color: #000000">
                &nbsp;</td>
            <td align="center" style="color: #000000" width="100">
                &nbsp;</td>
            <td align="center" style="color: #000000" class="style4" xml:lang="150">
                &nbsp;</td>
            <td align="left" style="color: #000000" width="300">
             
         
                &nbsp;</td>
            <td align="center" style="color: #000000" class="style2">
             
                &nbsp;</td>
            <td align="left" style="color: #000000">
             
                &nbsp;</td>
            <td align="left" style="color: #000000">
             
         
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="color: #000000" align="right">
                &nbsp;</td>
            <td align="left" style="color: #000000">
                &nbsp;</td>
            <td align="center" style="color: #000000" width="100">
                &nbsp;</td>
            <td align="center" style="color: #000000" class="style4" xml:lang="150" 
                colspan="3">
             
         
                <asp:Button ID="Button1" runat="server" BackColor="Yellow" BorderColor="Black" 
                    BorderStyle="Solid" BorderWidth="1px" onclick="Button1_Click1" 
                    Text="Search" Height="40px" Width="80px" />
                    
                    &nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="Yellow" BorderColor="Black" 
                    BorderStyle="Solid" BorderWidth="1px" onclick="Button3_Click" 
                    Text="Excel" Height="40px" Width="80px" />
                    
                    &nbsp;

                    <asp:Button ID="Button2" 
                    runat="server" BackColor="Yellow" BorderColor="Black" 
                    BorderStyle="Solid" BorderWidth="1px" onclick="Button2_Click" 
                    Text="Reset" Height="40px" Width="80px" />
               
          
                </td>
            <td align="left" style="color: #000000">
             
                &nbsp;</td>
            <td align="left" style="color: #000000">
             
         
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager></td>
        </tr>
        <tr>
            <td class="style3" style="color: #000000" align="right">
                &nbsp;</td>
            <td align="left" style="color: #000000">
                &nbsp;</td>
            <td align="center" style="color: #000000" width="100">
                &nbsp;</td>
            <td align="center" style="color: #000000" class="style4" xml:lang="150">
                &nbsp;</td>
            <td align="left" style="color: #000000" width="300">
             
         
                &nbsp;</td>
            <td align="center" style="color: #000000" class="style2">
             
                &nbsp;</td>
            <td align="left" style="color: #000000">
             
                &nbsp;</td>
            <td align="left" style="color: #000000">
             
         
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="color: #000000" align="right" colspan="8">
                &nbsp;</td>
        </tr>
        <tr>
        <td class="style3" colspan="8" height="25"></td>
        
        </tr>
        <tr>
            <td class="style3" colspan="8" align="center" style="border:none;">
             
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    style="font-weight: 700" DataKeyNames="incoming_id" 
                    onrowdatabound="GridView1_RowDataBound" ShowFooter="True" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                     <asp:TemplateField HeaderText="SN" >
                                <ItemTemplate>
                                    <%#GridView1.Rows.Count + 1%>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                        
                        </ItemTemplate>
                         <FooterTemplate>
                        <asp:Label ID="Label5" runat="server" Text="Total:"></asp:Label>
                        
                        </FooterTemplate>
                            <FooterStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>


                       <%-- <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("amount","{0:n}")%>'></asp:Label>
                        
                        </ItemTemplate>
                        
                        </asp:TemplateField>--%>

                         <asp:TemplateField ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right">
                        <HeaderTemplate>Amount</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("amount","{0:n}") %>'></asp:Label>
                        
                        </ItemTemplate>
                        <FooterTemplate>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        
                        </FooterTemplate>
                        
<FooterStyle HorizontalAlign="Center"></FooterStyle>

                             <HeaderStyle HorizontalAlign="Center" />

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                        </ItemTemplate>
                        
                            <FooterStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        
                        </asp:TemplateField>
                        <asp:BoundField DataField="remark" HeaderText="Remark" >
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
                   
                
                   
                </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>

