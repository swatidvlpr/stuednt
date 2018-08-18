<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Dbbackup.aspx.cs" Inherits="Admin_Dbbackup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">

         .Btn{
	width:280px;
	padding:10px;
	background:#1A7AD3;
	font:normal 15px/14px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#fff;
	margin:3px 0px;
	border:1px solid #002240;
	border-radius:4px;
	
}


</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br /><br />
    <center>
    <asp:Button ID="Button1" runat="server" Text="Create Database Backup" 
        onclick="Button1_Click" CssClass="Btn" />
    <br /><br /><br /><br />
    <asp:Label ID="msg" runat="server" CssClass="errorlbls" />
    </center>
</asp:Content>

