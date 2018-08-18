<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Classshow.aspx.cs" Inherits="admin_Classshow" EnableEventValidation="false" %>

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
     
     
   }*/


   
        
        
        
        .style2
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="1" cellspacing="1" align="center" width="90%">
        <tr>
            <td width="200">
                &nbsp;</td>
            <td width="200">
                &nbsp;</td>
            <td width="100">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                Id:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td align="center">
                OR</td>
            <td align="center">
                Date:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
               <%-- <cc1:MaskedEditExtender ID="TextBox2_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox2">
                </cc1:MaskedEditExtender>--%>
                <cc1:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" 
                    Enabled="True" Format="dd/MM/yyyy" PopupButtonID="Image1" 
                    TargetControlID="TextBox2">
                </cc1:CalendarExtender>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/admin/images/calendar.jpg" />
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Month:</td>
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
                And&nbsp; / OR</td>
            <td align="center">
                Year:</td>
            <td>
             
         
          <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
              <asp:ListItem Value="0">---Select Year---</asp:ListItem>
          </asp:DropDownList>
               
          
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="5">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="5">
                <asp:Button ID="Button1" runat="server" BackColor="Yellow" BorderColor="Black" 
                    Height="40px" Text="Search" Width="80px" onclick="Button1_Click" />
                    &nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="Yellow" BorderColor="Black" 
                    Height="40px" Text="Excel" Width="80px" onclick="Button3_Click" />

                &nbsp;<asp:Button ID="Button2" runat="server" BackColor="Yellow" BorderColor="Black" 
                    Height="40px" Text="Reset" Width="80px" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="5" height="30">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="5" style="border:none;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    onrowdatabound="GridView1_RowDataBound" ShowFooter="True" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>


                       <%-- <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("amount","{0:n}")%>'></asp:Label>
                        
                        </ItemTemplate>
                        
                        </asp:TemplateField>--%>






                      <%--  <asp:BoundField DataField="PerClass" HeaderText="PerClass" />
                        <asp:BoundField DataField="Totalpayment" HeaderText="Total Payment" />--%>
                        <asp:BoundField DataField="Faculty_id" HeaderText="Id" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="Name" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="date" HeaderText="Date" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="no_of_Class" HeaderText="No of Classes" >



                          <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>



                          <asp:TemplateField HeaderText="Fee Per Class">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("PerClass","{0:n}") %>'></asp:Label>
                        
                        </ItemTemplate>
                         <FooterTemplate>
                        <asp:Label ID="Label5" runat="server" Text="Total:"></asp:Label>
                        
                        </FooterTemplate>
                            <FooterStyle HorizontalAlign="Right" />
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                        </asp:TemplateField>


                         <asp:TemplateField ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right">
                        <HeaderTemplate>Total Payment</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Totalpayment","{0:n}") %>'></asp:Label>
                        
                        </ItemTemplate>
                        <FooterTemplate>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        
                        </FooterTemplate>
                        
                      <FooterStyle HorizontalAlign="Right"></FooterStyle>

                             <HeaderStyle HorizontalAlign="Right" />

                                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                        
                        </asp:TemplateField>






                        <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text="Details" NavigateUrl='<%#Eval("class_id","classshowdtl.aspx?id={0}") %>'></asp:HyperLink>
                        
                        </ItemTemplate>
                        
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        
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
        </table>
</asp:Content>

