<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiSite.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            background-color: #CCCCCC;
        }

        .auto-style12 {
            width: 35px;
        }

        .auto-style13 {
            width: 38px;
        }

        .auto-style14 {
            font-size: x-large;
        }

        .auto-style15 {
            background-color: #00FFFF;
        }

        .auto-style16 {
            font-size: small;
        }

        .auto-style17 {
            width: 46px;
        }

        .auto-style18 {
            width: 600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style7">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </strong></td>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style8">
        <asp:DataList ID="DataList1" runat="server" Width="446px" CssClass="auto-style15">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid")%>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" />
                            </a>

                        </td>
                        <td class="auto-style9">
                            <a href="KategoriDuzenle.aspx?Kategoriid=<%# Eval("Kategoriid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        &nbsp;
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style8">
        <table class="auto-style7" style="margin-top: 15px;">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td>KATEGORİ EKLEME</td>
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
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Btn_Ekle" runat="server" CssClass="auto-style16" Text="EKLE" Width="100px" OnClick="Btn_Ekle_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
