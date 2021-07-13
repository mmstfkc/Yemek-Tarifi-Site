<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSite.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: large;
            font-weight: bold;
        }

        .auto-style10 {
            font-size: large;
            font-weight: bold;
            margin-left: 0px;
        }

        .auto-style12 {
            width: 343px;
        }

        .auto-style13 {
            background-color: #CCCCCC;
        }

        .auto-style15 {
            width: 30px;
        }

        .auto-style16 {
            width: 100%;
            background-color: #CCCCCC;
        }

        .auto-style18 {
            width: 30px;
            background-color: #CCCCCC;
        }

        .auto-style20 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style16">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px" OnClick="Button1_Click" Text="+" Width="32px" />
                </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </strong></td>
                <td class="auto-style13"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td>
                            <a href="Yemekler.aspx?Yemekid=<%# Eval("Yemekid")%>&islem=sil">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" /></a>
                        </td>
                        <td><a href="YemekDuzenle.aspx?yemekid=<%# Eval("Yemekid") %>">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/update.png" Width="30px" />
                        </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style16">
            <tr>
                <td class="auto-style15"><strong><em>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Height="30px" OnClick="Button3_Click" Text="+" Width="30px" />
                </em></strong></td>
                <td class="auto-style15"><strong><em>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px" OnClick="Button4_Click" Text="-" Width="30px" />
                </em></strong></td>
                <td>YEMEK EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style7">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="75px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Btn_Ekle" runat="server" CssClass="auto-style8" Height="30px" OnClick="Btn_Ekle_Click" Text="Ekle" Width="100px" />
                </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
