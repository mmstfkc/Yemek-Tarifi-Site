<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSite.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            font-size: xx-large;
            color: #CCCCCC;
        }
        .auto-style12 {
            font-size: xx-small;
        }
        .auto-style13 {
            font-size: xx-large;
        }
        .auto-style14 {
            background-color: #FFFFCC;
        }
        .auto-style15 {
            margin-left: 40px;
        }
        .auto-style16 {
            text-align: right;
        }
        .auto-style17 {
            text-align: left;
            margin-left: 40px;
        }
        .auto-style18 {
            font-size: medium;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style11" Font-Size="36pt" Text="Label"></asp:Label>
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000;">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style12" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div class="auto-style14">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Ad Soyad:</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Mail:</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Yorumunuz:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style18" OnClick="Button1_Click" Text="Yorum Yap" Width="150px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
