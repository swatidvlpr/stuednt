<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Expenditureshow.aspx.cs" Inherits="Admin_Expenditureshow"  EnableEventValidation="false"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        
           /*      th, td {
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


        .style3
    {
        }
        .style4
        {
            width: 140px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table   cellspacing="1" align="center" width="90%">
        <tr>
            <td class="style3" style="color: #000000">
                Voucher No. :</td>
            <td align="left" style="color: #000000">
                <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Width="250px"></asp:TextBox>
               
          
            </td>
            <td align="left" style="color: #000000" class="style4">
                Month:</td>
            <td align="left" style="color: #000000">
             
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
            <td class="style3" style="color: #000000">
                &nbsp;</td>
            <td align="left" style="color: #000000">
                OR</td>
            <td align="left" style="color: #000000" class="style4">
                &nbsp;</td>
            <td align="left" style="color: #000000">
                And / OR</td>
        </tr>
        <tr>
            <td class="style3" style="color: #000000">
                Date:</td>
            <td align="left" style="color: #000000">
            <table>
            <tr align="left">
            <td style="border:none;" align="left"> <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
               <%-- <cc1:MaskedEditExtender ID="TextBox2_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox2">
                </cc1:MaskedEditExtender>--%>
                </td>
            <td style="border:none;">  
                <cc1:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" 
                Enabled="True" TargetControlID="TextBox2" Format="d/MM/yyyy"
                PopupButtonID="Image1">
            </cc1:CalendarExtender>
                <asp:Image ID="Image1" runat="server" Height="20px" Width="20px" 
                ImageAlign="Left" ImageUrl="~/admin/images/calendar.jpg" /></td>
            </tr>
            
            </table>
               
          
            </td>
            <td align="left" style="color: #000000" class="style4">
                Year:</td>
            <td align="left" style="color: #000000">
             
          <asp:DropDownList ID="DropDownList2" runat="server" Width="250px">
              <asp:ListItem Value="0">---Select Year---</asp:ListItem>
          </asp:DropDownList>
               
          
            </td>
        </tr>
        <tr>
            <td class="style3" style="color: #000000">
                &nbsp;</td>
            <td align="left" style="color: #000000">
                OR</td>
            <td align="left" style="color: #000000" class="style4">
                &nbsp;</td>
            <td align="left" style="color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="color: #000000">
                Head :</td>
            <td align="left" style="color: #000000">
             
         
                <asp:DropDownList ID="DropDownList3" runat="server" Width="250px" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                 <asp:ListItem Value="0">---Select---</asp:ListItem>
                            <asp:ListItem Value="0">Salary</asp:ListItem>
                            <asp:ListItem Value="1">House Rent</asp:ListItem>
                            <asp:ListItem Value="3">Electricty Bill</asp:ListItem>
                            <asp:ListItem Value="4">Mobile Bill</asp:ListItem>
                            <asp:ListItem Value="5">Landline Bill</asp:ListItem>
                            <asp:ListItem Value="6">Water Bill</asp:ListItem>
                            <asp:ListItem Value="7">Maintenance</asp:ListItem>
                            <asp:ListItem Value="8">Advertisement</asp:ListItem>
                            <asp:ListItem Value="10">Marketing</asp:ListItem>
                            <asp:ListItem>Conveyance</asp:ListItem>
                    <asp:ListItem>Hotel</asp:ListItem>
                            <asp:ListItem Value="11">Hospitality</asp:ListItem>
                            <asp:ListItem Value="12">Entertenment</asp:ListItem>
                            <asp:ListItem>Puja</asp:ListItem>
                            <asp:ListItem Value="9">Picnic</asp:ListItem>
                            <asp:ListItem Value="14">Other</asp:ListItem>
                </asp:DropDownList>
             
         
            </td>
            <td align="left" style="color: #000000" class="style4">
                &nbsp;</td>
            <td align="left" style="color: #000000">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="color: #000000" align="center" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="color: #000000" align="center" colspan="4">
                <asp:Button ID="Button1" runat="server" BackColor="Yellow" BorderColor="Black" 
                    BorderStyle="Solid" Height="40px" onclick="Button1_Click" Text="Search" 
                    Width="80px" />
                    &nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="Yellow" BorderColor="Black" 
                    BorderStyle="Solid" Height="40px" onclick="Button3_Click" Text="Excel" 
                    Width="80px" />
            &nbsp;<asp:Button ID="Button2" runat="server" BackColor="Yellow" BorderColor="Black" 
                    BorderStyle="Solid" Height="40px" onclick="Button2_Click" Text="Reset" 
                    Width="80px" />
            </td>
        </tr>
        <tr>
            <td class="style3" style="color: #000000" align="center" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="4" style="border:none;">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="4" align="center" style="border:none;">
             
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" 
                    GridLines="None" onrowdatabound="GridView1_RowDataBound" ShowFooter="True" 
                    Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>

                      <%--  <asp:BoundField DataField="Description" HeaderText="DESCRIPTION" />--%>

                     <asp:TemplateField HeaderText="SN" >
                                <ItemTemplate>
                                    <%#GridView1.Rows.Count + 1%>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        <asp:BoundField DataField="Voucher_no" HeaderText="Voucher No" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Head" HeaderText="Head" >

                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:BoundField DataField="ddate" HeaderText="Date">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>

                        <asp:TemplateField HeaderText="Description" ItemStyle-HorizontalAlign="Right" 
                            FooterStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                        
                        </ItemTemplate>
                        <FooterTemplate>Total Amount:</FooterTemplate>

<FooterStyle HorizontalAlign="Center"></FooterStyle>

                            <HeaderStyle HorizontalAlign="Center" />

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right">
                        <HeaderTemplate>Amount</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Amount","{0:n}") %>'></asp:Label>
                        
                        </ItemTemplate>
                        <FooterTemplate>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        
                        </FooterTemplate>
                        
<FooterStyle HorizontalAlign="Right"></FooterStyle>

                            <HeaderStyle HorizontalAlign="Right" />

<ItemStyle HorizontalAlign="Right"></ItemStyle>
                        
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                   
                  
                   
                </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>

