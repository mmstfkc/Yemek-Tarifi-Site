<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifiSite.TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }

        .auto-style16 {
            text-align: right;
        }
        .auto-style17 {
            text-align: left;
            margin-left: 40px;
        }
        .auto-style15 {
            margin-left: 40px;
        }
        .auto-style18 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style19 {
            width: 159px;
        }
        .auto-style20 {
            text-align: right;
            width: 159px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Tarif Adı:</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="Txt_TarifAd" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Tarif Malzemeler:</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="Txt_Malzeme" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Yapılış:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="Txt_Yapilis" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Tarif Resmi:</strong></td>
                <td class="auto-style17">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="Txt_Oneren" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Öneren Kişinin Maili:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="Txt_Mail" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Btn_Onayla" runat="server" CssClass="auto-style18" Text="Onayla" Width="150px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
