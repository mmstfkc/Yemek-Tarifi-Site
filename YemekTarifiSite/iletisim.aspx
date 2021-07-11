<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifiSite.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        text-align: right;
    }
    .auto-style12 {
        font-size: x-large;
        color: #000000;
    }
        .auto-style13 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style12" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Ad Soyad:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Mail Adresiniz:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Konu:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Mesaj:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style13"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="fb8" Text="Gönder" Width="230px" />
            </strong></td>
    </tr>
</table>
</asp:Content>
