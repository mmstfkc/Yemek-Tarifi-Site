<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSite.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        margin-left: 40px;
    }
    .auto-style9 {
        text-align: right;
    }
    .auto-style10 {
        font-weight: bold;
        font-style: italic;
        margin-left: 50px;
    }
        .auto-style11 {
            text-align: left;
            height: 39px;
            width: 115px;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Tarif Ad:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Malzemeler:</strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Yapılış:</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Resim:</strong></td>
        <td class="auto-style11">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Tarif Öneren:</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Mail Adresi:</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="TxtEmailAdresi" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8"><strong><em>
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="Aqua" CssClass="fb8" Height="50px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" />
            </em></strong></td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
</table>
</asp:Content>
