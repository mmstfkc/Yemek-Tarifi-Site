<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifiSite.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style8 {
            background-color: #CCCCCC;
        }

        .auto-style20 {
            width: 32px;
        }

        .auto-style14 {
            font-size: x-large;
        }

        .auto-style19 {
            width: 33px;
        }
        .auto-style21 {
            text-align: center;
        }
        .auto-style22 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style23 {
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style7">
            <tr>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong>HAKKIMIZDA</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="150px" Width="440px" CssClass="auto-style23"></asp:TextBox>
        <br />
        <strong>
        <asp:Button ID="Button3" runat="server" CssClass="auto-style22" Height="40px" OnClick="Button3_Click" Text="Güncelle" Width="200px" />
        </strong>
    </asp:Panel>
  
</asp:Content>
