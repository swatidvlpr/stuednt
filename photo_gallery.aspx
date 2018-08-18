<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="photo_gallery.aspx.cs" Inherits="Admin_photo_gallery" %>

<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 59%;
        }
        .style2
        {
        }
        .style4
        {
            width: 234px;
            height: 36px;
        }
        .style5
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td align="center" colspan="2" 
                style="font-family: Arial; font-weight: 700; font-size: medium" 
                class="style5">
                PHOTO GALLERY</td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: Arial; font-size: small; font-weight: 700" 
                align="right">
                Photo Name:</td>
            <td class="style5" align="left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" 
                style="font-family: Arial; font-size: small; font-weight: 700" 
                align="right">
                Image:</td>
            <td class="style5" align="left">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="image shouldnt be blank" 
                    ForeColor="#CC0000" ValidationGroup="a">*</asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                    runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                </cc1:ValidatorCalloutExtender>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4" align="right">
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    style="font-weight: 700" Text="Save" ValidationGroup="a" />
            </td>
            <td class="style5" align="left">
                <asp:Button ID="Button5" runat="server" style="font-weight: 700" 
                    Text="Cancel" onclick="Button5_Click" />
                <asp:Button ID="Button6" runat="server" style="font-weight: 700" Text="View" 
                    onclick="Button6_Click" />
                <asp:Label ID="msg" runat="server"></asp:Label>
                </td>
        </tr>
        <tr>
            <td align="center" class="style2" colspan="2">
&nbsp;
                &nbsp;
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    Width="241px" DataKeyNames="Photo_id" 
                    onrowdeleting="GridView2_RowDeleting" BackColor="White" 
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    AllowPaging="True" onpageindexchanging="GridView2_PageIndexChanging" 
                    PageSize="8">
                    <Columns>
                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                        <HeaderTemplate>Photo</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="60px" Width="60px" ImageUrl='<%# "Handler_photo.ashx?Photo_id=" + Eval("Photo_id")%>' />

                            <%--<asp:Image ID="Image3" runat="server" Height="60px" Width="60px" ImageUrl='<%#Eval("Photo") %>' />
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "Handler.ashx?e_id=" + Eval("e_id")%>' Height="60px" Width="50px" />--%>

                        </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Delete" SelectText="Delete" 
                            ShowDeleteButton="True" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                  <%--  <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />--%>
                </asp:GridView>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="style2" colspan="2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
    </table>
</asp:Content>

