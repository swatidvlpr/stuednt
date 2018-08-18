<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Outgoing.aspx.cs" Inherits="admin_Outgoing" %>

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
    
/*.td
        {
           font-family: 'Times New Roman', Times, serif; font-weight: bold; font-size: 15px; color: #000000; 
            
            }*/


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="1" cellspacing="1" align="center" width="90%">
        <tr>
            <td class="td">
                Amount:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="td" Width="250px">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox1" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td>
                Name:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="td" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="td">
                Date:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="td" Width="250px"></asp:TextBox>
              <%--  <cc1:MaskedEditExtender ID="TextBox2_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox2">
                </cc1:MaskedEditExtender>--%>
                <cc1:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" 
                    Enabled="True" Format="dd/MM/yyyy" TargetControlID="TextBox2"
                    PopupButtonID="Image1">
                </cc1:CalendarExtender>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/calendar.jpg" />
            </td>
            <td>
                Remark:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" 
                    Width="250px" CssClass="td"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="td" align="center" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="td" align="center" colspan="4">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:Button ID="Button1" runat="server" ForeColor="Black" 
                    onclick="Button1_Click" Text="Submit" BackColor="Yellow" 
                    BorderColor="Black" BorderStyle="Solid" Height="40px" Width="80px" />
                &nbsp;<asp:Button ID="Button2" runat="server" ForeColor="Black" 
                    onclick="Button2_Click" Text="Reset" BackColor="Yellow" 
                    BorderColor="Black" BorderStyle="Solid" Height="40px" Width="80px" />
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center" style="border:none;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    style="font-weight: 700" DataKeyNames="incoming_id" 
                    onrowdeleting="GridView1_RowDeleting" Width="900px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                     <asp:TemplateField HeaderText="SN" >
                                <ItemTemplate>
                                    <%#GridView1.Rows.Count + 1%>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("amount","{0:n}")%>'></asp:Label>
                        
                        </ItemTemplate>
                        
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                        </ItemTemplate>
                        
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                        
                        </ItemTemplate>
                        
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        
                        </asp:TemplateField>
                       <%-- <asp:CommandField ShowDeleteButton="True" />--%>
                        <asp:BoundField DataField="remark" HeaderText="Remark">
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
        </table>
</asp:Content>

