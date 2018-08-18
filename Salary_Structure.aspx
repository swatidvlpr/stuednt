<%@ Page Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Salary_Structure.aspx.cs" Inherits="AdminZone_Salary_Structure" Title="AdminZone::Salary_Structure" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style4
        {
            height: 21px;
        }
        .style5
        {
            height: 22px;
        }
        .style6
        {
            width: 10px;
            height: 22px;
        }
        .style7
        {
            width: 263px;
        }
        .style8
        {
            height: 21px;
            width: 263px;
        }
        .style9
        {
            width: 263px;
            height: 22px;
        }
        .style10
        {
            height: 18px;
        }
        .style11
        {
            width: 10px;
            height: 18px;
        }
        </style>

    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    


    <div class="topdiv" align="center">

    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            RepeatDirection="Horizontal" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
            CellPadding="12" CellSpacing="12" Width="800px">
            <asp:ListItem>EARNINGS</asp:ListItem>
            <asp:ListItem>ADVANCE</asp:ListItem>
            <asp:ListItem>DEDUCTIONS</asp:ListItem>
            <asp:ListItem>PAYMENT</asp:ListItem>
        </asp:RadioButtonList>
    </div>


    <table>
    <tr>
    
    <td align="center">
    <asp:Panel ID="Panel1" runat="server"  width="100%">
      
    <table cellpadding="0" cellspacing="0"  width="100%">
    <tr>
        <td height="20" width="200" colspan="3" align="center">&nbsp;</td>
    </tr>
    <tr>
        <td height="20" width="200" colspan="3" align="center">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left" class="style5">Id:</td>
        <td class="style6"></td>
        <td align="left" class="style5">
            <asp:DropDownList ID="ddlemployee" runat="server" AutoPostBack="True" 
                CssClass="tbox" onselectedindexchanged="ddlemployee_SelectedIndexChanged" 
                Width="250px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td height="20" align="left">
            &nbsp;</td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
        <tr>
            <td align="left" height="20">
                <asp:Label ID="Label30" runat="server" CssClass="innerlbls" 
                    Text=" Month and Year:"></asp:Label>
            </td>
            <td style="width: 10px">
                &nbsp;</td>
            <td align="left">
                <asp:DropDownList ID="ddlmonth0" runat="server" CssClass="tbox" Width="125px">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlyear0" runat="server" CssClass="tbox" Width="125px" 
                    AutoPostBack="True" onselectedindexchanged="ddlyear0_SelectedIndexChanged">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left" height="20">
                &nbsp;</td>
            <td style="width: 10px">
            </td>
            <td align="left">
                &nbsp;</td>
        </tr>
    <tr>
        <td align="left">
            <asp:Label ID="Label4" runat="server" CssClass="innerlbls" 
                Text="Name :"></asp:Label>
        </td>
        <td style="width: 10px"></td>
        <td align="left">
            <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="left">&nbsp;</td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">&nbsp;</td>
    </tr>
    <tr>
        <td height="20" align="left">
            <asp:Label ID="Label7" runat="server" CssClass="innerlbls" Text="Basic :"></asp:Label>
        </td>
        <td style="width: 10px"></td>
        <td align="left">
            <asp:TextBox ID="txtbasic" runat="server" CssClass="tbox" AutoPostBack="True" 
                ontextchanged="txtbasic_TextChanged" Width="250px"></asp:TextBox>
            <cc1:FilteredTextBoxExtender ID="txtbasic_FilteredTextBoxExtender" 
                runat="server" Enabled="True" TargetControlID="txtbasic" FilterType="Numbers, Custom" ValidChars=".,">
            </cc1:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td height="0" align="left">&nbsp;</td>
        <td style="width: 10px"></td>
        <td align="left"></td>
    </tr>
    <tr>
        <td height="0" align="left">
            <asp:Label ID="Label8" runat="server" CssClass="innerlbls" Text="HRA :"></asp:Label>
        </td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">
            <asp:TextBox ID="txthra" runat="server" CssClass="tbox" AutoPostBack="True" 
                ontextchanged="txthra_TextChanged" Width="250px"></asp:TextBox>
            <cc1:FilteredTextBoxExtender ID="txthra_FilteredTextBoxExtender" runat="server" 
                Enabled="True" TargetControlID="txthra" FilterType="Numbers, Custom" ValidChars=".,">
            </cc1:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td align="left" class="style10"></td>
        <td class="style11"></td>
        <td align="left" class="style10"></td>
    </tr>
    <tr  style="border:solid 1px #666;">
        <td height="0" align="left">
            <asp:Label ID="Label9" runat="server" CssClass="innerlbls" 
                Text="Travel Allowance :"></asp:Label>
        </td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">
            <asp:TextBox ID="txtTA" runat="server" CssClass="tbox" AutoPostBack="True" 
                ontextchanged="txtTA_TextChanged" Width="250px"></asp:TextBox>
            <cc1:FilteredTextBoxExtender ID="txtTA_FilteredTextBoxExtender" runat="server" 
                Enabled="True" TargetControlID="txtTA" FilterType="Numbers, Custom" ValidChars=".,">
            </cc1:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td height="0" align="left">&nbsp;</td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">&nbsp;</td>
    </tr>
    <tr>
        <td height="0" align="left">
            <asp:Label ID="Label10" runat="server" CssClass="innerlbls" 
                Text="Other Allowances :"></asp:Label>
        </td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">
            <asp:TextBox ID="txtOA" runat="server" CssClass="tbox" AutoPostBack="True" 
                ontextchanged="txtOA_TextChanged" Width="250px"></asp:TextBox>
            <cc1:FilteredTextBoxExtender ID="txtOA_FilteredTextBoxExtender" runat="server" 
                Enabled="True" TargetControlID="txtOA"  FilterType="Numbers, Custom" ValidChars=".,">
            </cc1:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td height="0" align="left">&nbsp;</td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">&nbsp;</td>
    </tr>
    <tr>
        <td height="0" align="left">
            <asp:Label ID="Label11" runat="server" CssClass="innerlbls" Text="Bonus :"></asp:Label>
        </td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">
            <asp:TextBox ID="txtbonus" runat="server" CssClass="tbox" AutoPostBack="True" 
                ontextchanged="txtbonus_TextChanged" Width="250px"></asp:TextBox>
            <cc1:FilteredTextBoxExtender ID="txtbonus_FilteredTextBoxExtender" 
                runat="server" Enabled="True" TargetControlID="txtbonus"   FilterType="Numbers, Custom" ValidChars=".,">
            </cc1:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td height="0" align="left">&nbsp;</td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">&nbsp;</td>
    </tr>
    <tr>
        <td height="0" align="left">
            <asp:Label ID="Label12" runat="server" CssClass="innerlbls" 
                Text="Mobile Reimbursement :"></asp:Label>
        </td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">
            <asp:TextBox ID="txtMR" runat="server" CssClass="tbox" AutoPostBack="True" 
                ontextchanged="txtMR_TextChanged" Width="250px"></asp:TextBox>
            <cc1:FilteredTextBoxExtender ID="txtMR_FilteredTextBoxExtender" runat="server" 
                Enabled="True" TargetControlID="txtMR"   FilterType="Numbers, Custom" ValidChars=".,">
            </cc1:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td height="0" align="left">&nbsp;</td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">&nbsp;</td>
    </tr>
    <tr>
        <td height="0" align="left">
            <asp:Label ID="Label13" runat="server" CssClass="innerlbls" 
                Text="Fixed Allowances :"></asp:Label>
        </td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">
            <asp:TextBox ID="txtFA" runat="server" CssClass="tbox" AutoPostBack="True" 
                ontextchanged="txtFA_TextChanged" Width="250px"></asp:TextBox>
            <cc1:FilteredTextBoxExtender ID="txtFA_FilteredTextBoxExtender" runat="server" 
                Enabled="True" TargetControlID="txtFA"   FilterType="Numbers, Custom" ValidChars=".,">
            </cc1:FilteredTextBoxExtender>
        </td>
    </tr>
    <tr>
        <td height="0" align="left">&nbsp;</td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">&nbsp;</td>
    </tr>
    <tr>
        <td height="0" align="left">
            <asp:Label ID="Label14" runat="server" CssClass="innerlbls" Text="Total :"></asp:Label>
        </td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">
            <asp:TextBox ID="txtF_Total" runat="server" CssClass="tbox" Width="250px" 
                SkinID="00.00"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td height="0">&nbsp;</td>
        <td style="width: 10px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td height="0" align="right">
            &nbsp;</td>
        <td style="width: 10px" align="left">&nbsp;</td>
        <td align="left">
            <asp:Button ID="btnsave" runat="server" BackColor="Yellow" BorderColor="Black" 
                CssClass="btn" Height="35px" onclick="btnsave_Click" Text="Submit" 
                Width="80px" />&nbsp;
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" 
                BackColor="Yellow" BorderColor="Black" Height="35px" Width="80px" />&nbsp;
            <asp:Button ID="btnrest" runat="server" BackColor="Yellow" BorderColor="Black" 
                CssClass="btn" Height="35px" onclick="btnrest_Click" Text="Reset" 
                Width="80px" />
        </td>
    </tr>
    <tr>
        <td height="0">&nbsp;</td>
        <td style="width: 10px">&nbsp;</td>
        <td>
            <asp:Label ID="Label6" runat="server" CssClass="errorlbls"></asp:Label>
        </td>
    </tr>
    <tr>
        <td height="0">&nbsp;</td>
        <td style="width: 10px">&nbsp;</td>
        <td align="left">
            <asp:Button ID="Button2" runat="server" BackColor="Yellow" BorderColor="Black" 
                Height="35px" onclick="Button2_Click" Text="View" Visible="False" 
                Width="80px" />
        </td>
    </tr>
    <tr>
        <td height="20" align="right">
            &nbsp;</td>
        <td style="width: 10px"></td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td height="20" colspan="3">
            <asp:GridView ID="GridView1" runat="server" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Emp_id" 
                ForeColor="#333333" GridLines="None" 
                onrowdeleting="GridView1_RowDeleting" AllowPaging="True" 
                onpageindexchanging="GridView1_PageIndexChanging" PageSize="5" 
                Width="1000px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Basic" HeaderText="BASIC" DataFormatString="{0:n}" >
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="HRA" HeaderText="HRA"  DataFormatString="{0:n}">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Travel_Allowance" HeaderText="TA" 
                        DataFormatString="{0:n}" >
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Other_Allowances" 
                        HeaderText="OA" DataFormatString="{0:n}" >
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Bonus" HeaderText="BONUS" DataFormatString="{0:n}" >
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Mobile_Reimbursement" 
                        HeaderText="MR"  DataFormatString="{0:n}">
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Fixed_Allowances" HeaderText="FA" 
                        DataFormatString="{0:n}" >
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Total_Salarry" HeaderText="TOTAL SALARY" 
                        DataFormatString="{0:n}" >
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="DELETE" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td height="20">&nbsp;</td>
        <td style="width: 10px">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td height="20">&nbsp;</td>
        <td style="width: 10px">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
        <tr>
            <td height="20">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
      </asp:Panel>
    </td>
    </tr>

<tr>
<td align="center">
<asp:Panel ID="Panel2" runat="server" >
  <table cellpadding="0" cellspacing="0">
    <tr>
        <td height="20" colspan="2" align="center">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2"></td>
    </tr>
    <tr>
        <td height="20" align="left" class="style7">
            <asp:Label ID="Label1" runat="server" CssClass="innerlbls" 
                Text="Id :"></asp:Label>
        </td>
        <td Width="600px" align="left" >
            <asp:DropDownList ID="ddlemp" runat="server" 
                onselectedindexchanged="ddlemp_SelectedIndexChanged" Width="250px" 
                style="height: 20px" AutoPostBack="True">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
      <tr>
          <td align="left" class="style7">
              <asp:Label ID="Label5" runat="server" CssClass="innerlbls" 
                  Text=" Month &amp; Year :"></asp:Label>
          </td>
          <td align="left">
              <asp:DropDownList ID="ddlmonth" runat="server" CssClass="tbox" Width="125px">
                  <asp:ListItem Value="0">----Select----</asp:ListItem>
              
              </asp:DropDownList>
              <asp:DropDownList ID="ddlyear" runat="server" AutoPostBack="True" 
                  CssClass="tbox" onselectedindexchanged="ddlyear_SelectedIndexChanged" 
                  Width="125px">
              </asp:DropDownList>
          </td>
      </tr>
      <tr>
          <td class="style9">
              </td>
          <td class="style5">
              </td>
      </tr>
    <tr>
        <td height="20" align="left" class="style7">
            Salary :</td>
        <td align="left">
            <asp:TextBox ID="txtsalary" runat="server" ReadOnly="True" 
                ontextchanged="txtsalary_TextChanged" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td height="20" align="left" class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td height="20" align="left" class="style7">
            Total days of Month :</td>
        <td align="left">
            <asp:TextBox ID="TextBox4" runat="server" Width="250px" 
                ontextchanged="TextBox4_TextChanged"></asp:TextBox>
        </td>
    </tr>
      <tr>
          <td align="left" height="20" class="style7">
              &nbsp;</td>
          <td align="left">
              &nbsp;</td>
      </tr>
      <tr>
          <td align="left" height="20" class="style7">
              <asp:Label ID="Label2" runat="server" CssClass="innerlbls" 
                  Text="Total Working Days :"></asp:Label>
          </td>
          <td align="left">
              <asp:TextBox ID="txttotalworking" runat="server" Width="250px" 
                  AutoPostBack="True" ontextchanged="txttotalworking_TextChanged"></asp:TextBox>
          </td>
      </tr>
    <tr>
        <td height="20" align="left" class="style7">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td height="20" align="left" class="style7">
            <asp:Label ID="Label15" runat="server" CssClass="innerlbls" Text="Worked for :"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtWorkedfor" runat="server" CssClass="tbox" ReadOnly="True" 
                Width="250px" ontextchanged="txtWorkedfor_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td height="20" align="left" class="style7">
            &nbsp;</td>
        <td align="left">
            <asp:HiddenField ID="HiddenField1" runat="server" />
        </td>
    </tr>
      <tr>
          <td align="left" height="20" class="style7">
              Total Leaves :</td>
          <td align="left">
              <asp:TextBox ID="TextBox5" runat="server" Width="250px" 
                  ontextchanged="TextBox5_TextChanged"></asp:TextBox>
          </td>
      </tr>
      <tr>
          <td align="left" height="20" class="style7">
              &nbsp;</td>
          <td align="left">
              &nbsp;</td>
      </tr>
      <tr>
          <td align="left" height="20" class="style7">
              <asp:Label ID="Label18" runat="server" CssClass="innerlbls" 
                  Text="Paid Leaves :"></asp:Label>
          </td>
          <td align="left">
              <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" 
                  ontextchanged="TextBox1_TextChanged1" Width="250px"></asp:TextBox>
          </td>
      </tr>
      <tr>
          <td align="left" height="20" class="style7">
              &nbsp;</td>
          <td align="left">
              &nbsp;</td>
      </tr>
      <tr>
          <td align="left" height="20" class="style7">
              <asp:Label ID="Label27" runat="server" CssClass="innerlbls" 
                  Text="UnPaid  Leaves :"></asp:Label>
          </td>
          <td align="left">
              <asp:TextBox ID="txtbleaves" runat="server" AutoPostBack="True" CssClass="tbox" 
                  ontextchanged="txtbleaves_TextChanged" ReadOnly="True" Width="250px"></asp:TextBox>
          </td>
      </tr>
    <tr>
        <td height="20" align="left" class="style7">
            &nbsp;</td>
        <td align="left">
            <asp:HiddenField ID="HiddenField2" runat="server" />
        </td>
    </tr>
    <tr>
        <td height="0" align="left" class="style7">
            <asp:Label ID="Label28" runat="server" CssClass="innerlbls" 
                Text="Unpaid Leave price :"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtlvesprice" runat="server" AutoPostBack="True" 
                CssClass="tbox" ontextchanged="txtlvesprice_TextChanged" ReadOnly="True" 
                Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td height="0" align="left" class="style7">&nbsp;</td>
        <td align="left">&nbsp;</td>
    </tr>
      <tr>
          <td align="left" height="0" class="style7">
              Advance Taken :</td>
          <td align="left">
              <asp:TextBox ID="TextBox6" runat="server" Width="250px" AutoPostBack="True" 
                  ontextchanged="TextBox6_TextChanged">00.00</asp:TextBox>
          </td>
      </tr>
      <tr>
          <td align="left" height="0" class="style7">
              &nbsp;</td>
          <td align="left">
              <asp:HiddenField ID="HiddenField3" runat="server" Value="00.00" />
          </td>
      </tr>
    <tr>
        <td height="0" align="left" class="style7">
            <asp:Label ID="Label16" runat="server" CssClass="innerlbls" 
                Text="Advance Deduct :"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtAdv" runat="server" AutoPostBack="True" CssClass="tbox" 
                ontextchanged="txtAdv_TextChanged" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td height="0" align="left" class="style7">&nbsp;</td>
        <td align="left">&nbsp;</td>
    </tr>
      <tr>
          <td align="left" height="0" class="style7">
              <asp:Label ID="Label31" runat="server" CssClass="innerlbls" 
                  Text="Current Salary :"></asp:Label>
              </td>
          <td align="left">
              <asp:TextBox ID="txtspaid" runat="server" AutoPostBack="True" 
                  ontextchanged="txtspaid_TextChanged" Width="250px">00.00</asp:TextBox>
          </td>
      </tr>
      <tr>
          <td align="left" height="0" class="style7">
              &nbsp;</td>
          <td align="left">
              &nbsp;</td>
      </tr>
    <tr>
        <td height="0" align="left" class="style7">
            <asp:Label ID="Label17" runat="server" CssClass="innerlbls" 
                Text="Others :"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtother" runat="server" CssClass="tbox" 
                ontextchanged="txtother_TextChanged" Width="250px" AutoPostBack="True">00.00</asp:TextBox>
        </td>
    </tr>
    <tr>
        <td height="0" align="left" class="style7">&nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
      <tr>
          <td align="left" class="style7" height="0">
              Previous Dues :</td>
          <td align="left">
              <asp:TextBox ID="TextBox3" runat="server" Width="250px">00.00</asp:TextBox>
          </td>
      </tr>
      <tr>
          <td align="left" class="style7" height="0">
              &nbsp;</td>
          <td align="left">
              &nbsp;</td>
      </tr>
    <tr>
        <td height="0" align="left" class="style7">
            <asp:Label ID="Label19" runat="server" CssClass="innerlbls" 
                Text="Total :"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txt_total" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td height="0" align="right" class="style7">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td height="0" align="left" class="style7">
            <asp:Label ID="Label29" runat="server" CssClass="innerlbls" 
                Text="Total in Words :" Visible="False"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txt_sub_tot_word" runat="server" Width="250px" Visible="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td height="0" align="right" class="style7">&nbsp;</td>
        <td align="left">
            <asp:HiddenField ID="HiddenField4" runat="server" />
        </td>
    </tr>
    <tr>
        <td height="0" align="right" class="style7">
            <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Submit" 
                onclick="btnsubmit_Click" BackColor="Yellow" BorderColor="Black" 
                Height="35px" Width="80px" /> &nbsp;
            </td>
        <td align="left">
            <asp:Button ID="Button4" runat="server" Text="Update" onclick="Button4_Click" 
                Height="35px" Width="80px" BackColor="Yellow" BorderColor="Black" />&nbsp;
            <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="View" 
                BackColor="Yellow" BorderColor="Black" Height="35px" Width="80px" />
            &nbsp;<asp:Button ID="Button8" runat="server" BackColor="Yellow" BorderColor="Black" 
                CssClass="btn" Height="35px" onclick="Button8_Click" Text="Reset" 
                Width="80px" />
            </td>
    </tr>
    <tr>
        <td class="style8"></td>
        <td class="style4">
            <asp:Label ID="Label20" runat="server" CssClass="errorlbls"></asp:Label>
        </td>
    </tr>
    <tr>
        <td height="0" class="style7">&nbsp;</td>
        <td>
            <asp:Label ID="lblmsg" runat="server" CssClass="errorlbls"></asp:Label>
        </td>
    </tr>
    <tr>
        <td height="20" class="style7"></td>
        <td>
            &nbsp;
            </td>
    </tr>

    <tr>
    <td colspan="2">
    
    
    </td>
    
    
    </tr>
    </table>

        </asp:Panel>
</td>

</tr>
    <tr>
    <td>
        <asp:Panel ID="Panel3" runat="server">

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowdeleting="GridView2_RowDeleting" Width="100%" 
            AllowPaging="True" DataKeyNames="Emp_id" 
            onpageindexchanging="GridView2_PageIndexChanging" PageSize="5">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Emp_id" HeaderText="Name" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Salary" HeaderText="Salary" 
                    DataFormatString="{0:n}" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Salary_month" HeaderText="Month" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="total_working" HeaderText="Total Working" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="working_for" HeaderText="Working For" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Adv" HeaderText="Adv" DataFormatString="{0:n}" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="other" HeaderText="Other" DataFormatString="{0:n}" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="leavs_price" HeaderText="Leaves" 
                    DataFormatString="{0:n}" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Sub_total" HeaderText="Sub Total" 
                    DataFormatString="{0:n}" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
        </asp:Panel>
    
    </td>
    
    
    </tr>

    <tr>
    <td>
        <asp:Panel ID="Panel4" runat="server">
        <table width="100%">
       <tr>
   <td width="200">
   
   </td>
       <td width="10">
   
           &nbsp;</td>
       
           <td width="300">
           </td>
       
           <td width="20">
               &nbsp;</td>
           <td rowspan="12" align="left" valign="top">
               <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                   CellPadding="4" ForeColor="#333333" GridLines="None" Width="400px">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:BoundField DataField="Emp_Id" HeaderText="ID">
                       <HeaderStyle HorizontalAlign="Center" />
                       <ItemStyle HorizontalAlign="Center" />
                       </asp:BoundField>
                       <asp:BoundField DataField="Advance" HeaderText="Advance" 
                           DataFormatString="{0:n}">
                       <HeaderStyle HorizontalAlign="Right" />
                       <ItemStyle HorizontalAlign="Right" />
                       </asp:BoundField>
                       <asp:BoundField DataField="Remarks" HeaderText="Remarks">
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
          <tr align="left" valign="top">
   <td align="left">
   
       &nbsp;Id :</td>
       <td>
   
           &nbsp;</td>
       
              <td align="left">
                  <asp:DropDownList ID="DropDownList1" runat="server" Width="250px" 
                      AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                      <asp:ListItem Value="0">--Select--</asp:ListItem>
                  </asp:DropDownList>
              </td>
       
              <td align="left">
                  &nbsp;</td>
       
       </tr>
       
          <tr>
   <td align="left">
   
   </td>
       <td>
   
           &nbsp;</td>
       
              <td align="left">
              </td>
       
              <td align="left">
                  &nbsp;</td>
       
       </tr>
          <tr>
   <td align="left">   
       Advance :</td>
       <td>
   
           &nbsp;</td>
       
              <td align="left">
                  <asp:TextBox ID="txtadv1" runat="server" Width="250px">00.00</asp:TextBox>
                  <cc1:FilteredTextBoxExtender ID="txtadv1_FilteredTextBoxExtender" 
                      runat="server" Enabled="True" TargetControlID="txtadv1" FilterType="Numbers, Custom" ValidChars=".,">
                  </cc1:FilteredTextBoxExtender>
              </td>
       
              <td align="left">
                  &nbsp;</td>
       
       </tr> 
            <tr>
                <td align="left">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                    Remarks :</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    <asp:TextBox ID="txtremark1" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="justify">
                    Date :</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    <asp:TextBox ID="txtcdt" runat="server" Width="250px"></asp:TextBox>
                   <%-- <cc1:MaskedEditExtender ID="txtcdt_MaskedEditExtender" runat="server" 
                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                        CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                        CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                        Mask="99/99/9999" MaskType="Date" TargetControlID="txtcdt">
                    </cc1:MaskedEditExtender>--%>
                    <cc1:CalendarExtender ID="txtcdt_CalendarExtender" runat="server" 
                        Enabled="True" Format="dd/MM/yyyy" PopupButtonID="Image1" 
                        TargetControlID="txtcdt">
                    </cc1:CalendarExtender>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/admin/images/calendar.jpg" />
                </td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    <asp:Button ID="Button6" runat="server" BackColor="Yellow" BorderColor="Black" 
                        Height="35px" onclick="Button6_Click" Text="Submit" Width="80px" />&nbsp;
                    <asp:Button ID="btnrestt" runat="server" BackColor="Yellow" BorderColor="Black" 
                        CssClass="btn" Height="35px" onclick="btnrestt_Click" Text="Reset" 
                        Width="80px" />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:Label ID="msg" runat="server"></asp:Label>
                </td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
        </table>

        </asp:Panel>
    </td>
    
    </tr>

    <tr>
    <td>
        <asp:Panel ID="Panel5" runat="server">
        <table width="100%">
        <tr>
        <td width="200">
        
            &nbsp;</td>
            <td width="10">
            </td>
         <td>
        
        </td>
        </tr>
        <tr>
        <td align="left">
        
            Id :</td>
            <td>
            </td>
         <td align="left">
        
             <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                 onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="250px">
                 <asp:ListItem Value="--Select--">--Select--</asp:ListItem>
             </asp:DropDownList>
        
        </td>
        </tr>
        <tr>
        <td align="left">
        
            &nbsp;</td>
            <td>
            </td>
         <td align="left">
        
        </td>
        </tr>
        <tr>
        <td align="left">
        
            Salary :</td>
            <td>
            </td>
         <td align="left">
        
             <asp:TextBox ID="TextBox7" runat="server" Width="250px">00.00</asp:TextBox>
        
             <cc1:FilteredTextBoxExtender ID="TextBox7_FilteredTextBoxExtender" 
                 runat="server" Enabled="True" TargetControlID="TextBox7"   FilterType="Numbers, Custom" ValidChars=".,">
             </cc1:FilteredTextBoxExtender>
        
        </td>
        </tr>
            <tr>
                <td align="left">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                    Payment Salary :</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    <asp:TextBox ID="TextBox8" runat="server" AutoPostBack="True" 
                        ontextchanged="TextBox8_TextChanged" Width="250px">00.00</asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="TextBox8_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="TextBox8"   FilterType="Numbers, Custom" ValidChars=".,">
                    </cc1:FilteredTextBoxExtender>
                </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                    Due :</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    <asp:TextBox ID="TextBox9" runat="server" Width="250px" 
                        ontextchanged="TextBox9_TextChanged">00.00</asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="TextBox9_FilteredTextBoxExtender" 
                        runat="server" Enabled="True" TargetControlID="TextBox9"   FilterType="Numbers, Custom" ValidChars=".,">
                    </cc1:FilteredTextBoxExtender>
                </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                    Date :</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    <asp:TextBox ID="TextBox10" runat="server" Width="250px"></asp:TextBox>
                  <%--  <cc1:MaskedEditExtender ID="TextBox10_MaskedEditExtender" runat="server" 
                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                        CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                        CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                        Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox10">
                    </cc1:MaskedEditExtender>--%>
                    <cc1:CalendarExtender ID="TextBox10_CalendarExtender" runat="server" 
                        Enabled="True" Format="dd/MM/yyyy" PopupButtonID="Image2" 
                        TargetControlID="TextBox10">
                    </cc1:CalendarExtender>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/admin/images/calendar.jpg" />
                </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp;</td>
                <td>
                  </td>
                <td align="left">
                    <asp:Button ID="Button7" runat="server" BackColor="Yellow" BorderColor="Black" 
                        Height="35px" onclick="Button7_Click" Text="Submit" Width="80px" />
                      &nbsp;<asp:Button ID="Button9" runat="server" BackColor="Yellow" 
                        BorderColor="Black" Height="35px" onclick="Button9_Click" Text="Reset" 
                        Width="80px" />
                    &nbsp;&nbsp; &nbsp; &nbsp;<asp:Label ID="Label32" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
            </tr>
        </table>

        </asp:Panel>
    </td>
    </tr>
    </table>
    

    
</asp:Content>