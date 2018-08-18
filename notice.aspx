<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="notice.aspx.cs" Inherits="Admin_notice" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 36px;
        }
        .style4
        {
            width: 924px;
        }
        .style11
        {
            width: 404px;
        }
        .style12
        {
            width: 401px;
        }
        .style13
        {
            width: 402px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="font-family: Arial; font-size: medium; font-weight: bold">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;Notice Entry<br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:RadioButtonList ID="rblnot" runat="server" 
                    RepeatDirection="Horizontal" AutoPostBack="True" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    Font-Bold="True" Font-Names="Arial" Font-Size="Small">
                    <asp:ListItem>All</asp:ListItem>
                    <asp:ListItem>Study Center</asp:ListItem>
                    <asp:ListItem>Staff</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Panel ID="Panel1" runat="server" Height="370px" Width="800px">
                <table style="width: 100%">
                <tr>
                <td colspan="2" align="left" class="style2" 
                        style="font-family: Arial; font-weight: bold; font-size: medium">
                Common Notice
                </td>
                </tr>
                <tr>
                <td align="right" class="style11" 
                        style="font-family: Arial; font-size: small; font-weight: bold">
                Notice Heading :
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txtnhead" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtnhead" ErrorMessage="noticeheading shouldnt be blank" 
                        ForeColor="#CC0000" ValidationGroup="a" style="font-weight: 700">*</asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                    </cc1:ValidatorCalloutExtender>
                </td>
                </tr>
                <tr>
                <td align="right" class="style11" 
                        style="font-family: Arial; font-size: small; font-weight: bold">
                    Document :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="left" class="style2">
                    <asp:FileUpload ID="filedoc" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="filedoc" ErrorMessage="document shouldnt be blank" 
                        ForeColor="#CC0000" ValidationGroup="a" style="font-weight: 700">*</asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator12_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator12">
                    </cc1:ValidatorCalloutExtender>
                </td>
                </tr>
                <tr>
                <td align="right" class="style11" 
                        style="font-family: Arial; font-size: small; font-weight: bold">
                    Notice Subject :&nbsp;&nbsp;
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txtnosub" runat="server" Height="54px" TextMode="MultiLine" 
                        Width="188px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtnosub" ErrorMessage="notice subject shouldnt be blank" 
                        ForeColor="#CC0000" ValidationGroup="a" style="font-weight: 700">*</asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                    </cc1:ValidatorCalloutExtender>
                </td>
                </tr>
                <tr>
                <td align="center" colspan="2" class="style2">
                    <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" 
                        style="font-weight: 700" ValidationGroup="a" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Display" 
                        style="font-weight: 700" onclick="Button2_Click" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" style="font-weight: 700" 
                        Text="Cancel" onclick="Button3_Click" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" style="font-weight: 700" 
                        Text="Update" onclick="Button5_Click" />
                </td>
                </tr>
                <tr>
                <td align="center" colspan="2">
                    <br />
                    <asp:GridView ID="gridnot1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="Notice_id" Font-Names="Arial" Font-Size="Small" Height="158px" 
                        onrowdeleting="gridnot1_RowDeleting" 
                        onselectedindexchanged="gridnot1_SelectedIndexChanged" Width="327px">
                        <Columns>
                            <asp:BoundField DataField="notice_heading" HeaderText="Notice Heading" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="notice_subject" HeaderText="Notice Subject" ItemStyle-HorizontalAlign="Center"/>
                            <asp:CommandField HeaderText="Edit" SelectText="Edit" ShowSelectButton="True" ItemStyle-HorizontalAlign="Center"
                                ButtonType="Button" />
                            <asp:CommandField HeaderText="Delete" SelectText="Delete" ItemStyle-HorizontalAlign="Center"
                                ShowDeleteButton="True" ButtonType="Button" />
                        </Columns>
                    </asp:GridView>
                </td>
                </tr>
                </table>
                </asp:Panel>
            </td>
        </tr>
     <tr>
            <td align="center" colspan="2" class="style2">
                <asp:Panel ID="Panel2" runat="server" Height="407px" Width="800px">
                <table width="100%">
                <tr>
                <td colspan="2" align="left" class="style2" 
                        style="font-family: Arial; font-size: medium; font-weight: bold">
                Notice For StudyCenter
                </td>
                </tr>
                <tr>
                <td align="right" class="style12" 
                        style="font-family: Arial; font-size: small; font-weight: bold">
                    Study Center :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="left" class="style2">
                    <asp:DropDownList ID="ddlscent" runat="server" Height="22px" Width="128px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="ddlscent" ErrorMessage="enter shouldnt be blank" 
                        ForeColor="#CC0000" ValidationGroup="b" style="font-weight: 700">*</asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                    </cc1:ValidatorCalloutExtender>
                </td>
                </tr>
                <tr>
                <td align="right" class="style12" 
                        style="font-family: Arial; font-size: small; font-weight: bold">
                Notice Heading :
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txtnhead1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtnhead1" ErrorMessage="noticeheading shouldnt be blank" 
                        ForeColor="#CC0000" ValidationGroup="b" style="font-weight: 700">*</asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
                    </cc1:ValidatorCalloutExtender>
                </td>
                </tr>
                <tr>
                <td align="right" class="style12" 
                        style="font-family: Arial; font-size: small; font-weight: bold">
                    Document :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="left" class="style2">
                    <asp:FileUpload ID="filedoc1" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="filedoc1" ErrorMessage="document shouldnt be blank" 
                        ForeColor="#CC0000" ValidationGroup="b" style="font-weight: 700">*</asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td align="right" class="style12" 
                        style="font-family: Arial; font-size: small; font-weight: bold">
                    Notice Subject :&nbsp;&nbsp;
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txtnosub1" runat="server" Height="73px" TextMode="MultiLine" 
                        Width="218px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtnosub1" ErrorMessage="noticesubject shouldnt be blank" 
                        ForeColor="#CC0000" ValidationGroup="b" style="font-weight: 700">*</asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                    </cc1:ValidatorCalloutExtender>
                </td>
                </tr>
                <tr>
                <td colspan="2" align="center" class="style2">
                    <asp:Button ID="Button6" runat="server" Text="Save" onclick="Button6_Click" 
                        style="font-weight: 700" ValidationGroup="b" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                        style="font-weight: 700" Text="Display" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
                        style="font-weight: 700" Text="Cancel" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
                        style="font-weight: 700" Text="Update" />
                </td>
                </tr>
                <tr>
                <td colspan="2" align="center">
                    <br />
                    <asp:GridView ID="gridnot2" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="study_notice_id" Font-Names="Arial" Font-Size="Small" 
                        Height="146px" onrowdeleting="gridnot2_RowDeleting" 
                        onselectedindexchanged="gridnot2_SelectedIndexChanged" Width="307px">
                        <Columns>
                            <asp:BoundField DataField="Notice_heading" HeaderText="Notice Heading" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="Notice_Sub" HeaderText="Notice Subject" ItemStyle-HorizontalAlign="Center"/>
                            <asp:CommandField HeaderText="Edit" SelectText="Edit" ShowSelectButton="True" ItemStyle-HorizontalAlign="Center"
                                ButtonType="Button" />
                            <asp:CommandField HeaderText="Delete" SelectText="Delete" ItemStyle-HorizontalAlign="Center"
                                ShowDeleteButton="True" ButtonType="Button" />
                        </Columns>
                    </asp:GridView>
                </td>
                </tr>
                </table>
                </asp:Panel>
            </td>
        </tr>
       <tr>
            <td align="center" colspan="2">
                <asp:Panel ID="Panel3" runat="server" Height="516px" Width="800px" 
                    style="margin-top: 0px">
                <table width="100%">
                 <tr>
                <td colspan="2" align="left" class="style2" 
                         style="font-family: Arial; font-size: medium; font-weight: bold">
                    Staff</td>
                </tr>
                <tr>
                <td align="right" class="style13" 
                        style="font-family: Arial; font-size: small; font-weight: bold">
                Notice Heading :
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txtnhead2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtnhead2" ErrorMessage="noticeheading shouldnt be blank" 
                        ForeColor="#CC0000" ValidationGroup="c" style="font-weight: 700">*</asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator10_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator10">
                    </cc1:ValidatorCalloutExtender>
                </td>
                </tr>
                <tr>
                <td align="right" class="style13" 
                        style="font-family: Arial; font-size: small; font-weight: bold">
                    Notice Subject :&nbsp;&nbsp;
                </td>
                <td align="left" class="style2">
                    <asp:TextBox ID="txtnosub2" runat="server" Height="62px" TextMode="MultiLine" 
                        Width="223px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtnosub2" ErrorMessage="notice subject shouldnt be blank" 
                        ForeColor="#CC0000" ValidationGroup="c" style="font-weight: 700">*</asp:RequiredFieldValidator>
                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator11_ValidatorCalloutExtender" 
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator11">
                    </cc1:ValidatorCalloutExtender>
                    </td>
                </tr>
                    <tr>
                        <td align="right" class="style13" 
                            style="font-family: Arial; font-size: small; font-weight: bold">
                            Notice Date:</td>
                        <td align="left" class="style2">
                            <asp:TextBox ID="txtnoticedt" runat="server"></asp:TextBox>
                            <cc1:CalendarExtender ID="txtnoticedt_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="txtnoticedt">
                            </cc1:CalendarExtender>
                        </td>
                    </tr>
                <tr>
                <td align="center" colspan="2" class="style2">
                    <asp:Button ID="Button10" runat="server" Text="Save" onclick="Button10_Click" 
                        style="font-weight: 700" ValidationGroup="c" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button11" runat="server" onclick="Button11_Click" 
                        style="font-weight: 700" Text="Display" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button12" runat="server" onclick="Button12_Click" 
                        style="font-weight: 700" Text="Cancel" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button13" runat="server" Text="Update" onclick="Button13_Click" 
                        style="font-weight: 700" />
                </td>
                </tr>
                <tr>
                <td align="center" colspan="2">
                    <br />
                    <asp:GridView ID="gridnot3" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="staff_ntic_id" Font-Names="Arial" Font-Size="Small" Height="145px" 
                        onrowdeleting="gridnot3_RowDeleting" 
                        onselectedindexchanged="gridnot3_SelectedIndexChanged" Width="280px">
                        <Columns>
                            <asp:BoundField DataField="Notice_heading" HeaderText="Notice Heading" 
                                ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Notice_subject" HeaderText="Subject" 
                                ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="notice_dt" HeaderText="notice date" />
                            <asp:CommandField ButtonType="Button" HeaderText="Edit" 
                                ItemStyle-HorizontalAlign="Center" SelectText="Edit" ShowSelectButton="True">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                            <asp:CommandField ButtonType="Button" HeaderText="Delete" 
                                ItemStyle-HorizontalAlign="Center" SelectText="Delete" ShowDeleteButton="True">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                </td>
                </tr>
                </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
        <td align="center" class="style2">
           
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
           
        </td>
        </tr>
    </table>
    <table>
    <tr>
    <td align="center" class="style4">
      <asp:Button ID="Button4" runat="server" Text="Cancel" Width="63px" 
            onclick="Button4_Click" style="font-weight: 700" />
    </td>
    </tr>
    </table>
   
</asp:Content>

