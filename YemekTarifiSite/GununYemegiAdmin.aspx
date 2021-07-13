<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifiSite.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style16 {
            width: 100%;
            background-color: #CCCCCC;
        }

        .auto-style18 {
            width: 30px;
            background-color: #CCCCCC;
        }

        .auto-style8 {
            font-size: large;
            font-weight: bold;
        }

        .auto-style10 {
            font-size: large;
            font-weight: bold;
            margin-left: 0px;
        }

        .auto-style13 {
            background-color: #CCCCCC;
        }

        .auto-style19 {
            width: 381px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style16">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="32px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style13"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td><a href="YemekDuzenle.aspx?yemekid=<%# Eval("Yemekid") %>">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/choose.jpg" Width="30px" />
                        </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    
</asp:Content>
