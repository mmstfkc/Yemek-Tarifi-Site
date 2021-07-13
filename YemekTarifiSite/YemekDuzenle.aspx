<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifiSite.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
            font-size: large;
        }
        .auto-style9 {
            width: 147px;
            text-align: right;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;
    <table class="auto-style8">
        <tr>
            <td class="auto-style9"><strong></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>YEMEK AD:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>MALZEMELER:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>TARİF:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>KATEGORİ:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Text="Güncelle" OnClick="Button1_Click" Width="250px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style12" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="250px" />
                </strong></td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp; 
</asp:Content>
