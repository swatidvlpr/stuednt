<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Facultyshow.aspx.cs" Inherits="admin_Facultyshow"   EnableEventValidation="false" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
   
        
        
        .style2
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  cellpadding="1" cellspacing="1" align="center" width="90%">
        <tr>
            <td class="style2" align="right">
                Id:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td align="center">
&nbsp;&nbsp; OR&nbsp;&nbsp;
            </td>
            <td align="right">
                Date:</td>
            <td align="left">
            <table>
            
            <tr align="left">
            <td  style="border:none;"> <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
               <%-- <cc1:MaskedEditExtender ID="TextBox1_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox1">
                </cc1:MaskedEditExtender>--%>
                <cc1:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
                    Enabled="True" Format="dd/MM/yyyy" PopupButtonID="Image1" 
                    TargetControlID="TextBox1">
                </cc1:CalendarExtender>
                </td>
            <td  style="border:none;"> <asp:Image ID="Image1" runat="server" ImageUrl="~/admin/images/calendar.jpg" /></td>
            </tr>
            </table>
               
               
            </td>
        </tr>
        <tr>
            <td class="style2" align="right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" align="right">
                Month:</td>
            <td>
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
            <td align="center">
                And / OR</td>
            <td align="right">
                Year:</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
                  <asp:ListItem Value="0">---Select Year---</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2" align="right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" align="center" colspan="5" valign="bottom">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" align="center" colspan="5" valign="bottom">
                <asp:Button ID="Button1" runat="server" Height="40px" Text="Search" 
                    Width="80px" BackColor="Yellow" BorderColor="Black" 
                    onclick="Button1_Click" /> &nbsp;
                    <asp:Button ID="Button3" runat="server" Height="40px" Text="Excel" 
                    Width="80px" BackColor="Yellow" BorderColor="Black" 
                    onclick="Button3_Click" />
            &nbsp;<asp:Button ID="Button2" runat="server" Height="40px" Text="Reset" 
                    Width="80px" BackColor="Yellow" BorderColor="Black" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2" align="center" colspan="5" valign="bottom">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" align="center" colspan="5" style="border:none;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Fuculty_id" HeaderText="Id" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="Name" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Class" HeaderText="Class" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="subject" HeaderText="Subject" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Chapter" HeaderText="Chapter" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_classes" HeaderText="Total Classes" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="fee_per_clsses" HeaderText="Fee Per Class" 
                            DataFormatString="{0:n}" >
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="total_payment" HeaderText="Total Payment" 
                            DataFormatString="{0:n}" >
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text="Details" NavigateUrl='<%#Eval("faculty_id","facultyshowdtl.aspx?id={0}") %>'></asp:HyperLink>
                        
                        
                        </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                        </asp:TemplateField>
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
        <tr>
            <td class="style2" colspan="5"  style="border:none;">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        </table>
</asp:Content>

