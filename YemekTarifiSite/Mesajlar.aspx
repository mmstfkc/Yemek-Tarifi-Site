<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifiSite.Mesajlar" %>

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
    
        .auto-style15 {
            background-color: #00FFFF;
        }

        .auto-style21 {
        width: 382px;
    }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style7">
            <tr>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td><strong>MESAJ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
               <asp:Panel ID="Panel2" runat="server" CssClass="auto-style8">
        <asp:DataList ID="DataList1" runat="server" Width="446px" CssClass="auto-style15">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">

                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.png" Width="30px" />

                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>

    </asp:Content>
