<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminTarifOnerileri.aspx.cs" Inherits="RecipeSite.AdminTarifOnerileri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 31px;
            background-color: #00FFFF;
            height: 43px;
        }
        .auto-style8 {
            font-size: medium;
        }
        .auto-style9 {
            background-color: #00FFFF;
            text-align: left;
            height: 43px;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            width: 35px;
            background-color: #00FFFF;
        }
        .auto-style12 {
            width: 26px;
            background-color: #00FFFF;
            height: 43px;
        }
        .auto-style13 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style13" Height="46px">
            <span>
            <td class="auto-style24"></td>
            </span>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12" style="padding: inherit; border: thin solid #00FFFF;"><strong><span class="auto-style11">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="30px"  Text="+" Width="30px"  style="font-weight: bold; font-size: medium;" OnClick="Button1_Click"    />
                        </span></strong></td>
                    <td class="auto-style7" style="padding: inherit; margin: inherit; border: thin solid #00FFFF;"><strong><span class="auto-style11">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="30px"  style="font-weight: bold; font-size: medium;" OnClick="Button2_Click"   />
                        </span></strong></td>
                    <td style="padding: inherit; border: thin solid #00FFFF;" class="auto-style9"><strong><span class="auto-style8">ONAYSIZ TARİF ÖNERİ </span></strong><span class="auto-style8"><strong style="border: thin none #00FFFF">LİSTESİ</strong></span></td>
                </tr>
            </table>
            </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px" CssClass="auto-style3" Height="260px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style27">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("recipeName") %>' style="font-size: medium"></asp:Label>
                        </td>
                        <td class="auto-style13">
                          <a href="AdminTarifOnerDetay.aspx?recipeId=<%#Eval("recipeId") %>"> <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/iconlar/öneri.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13" Height="46px">
            <span>
            <td class="auto-style24"></td>
            </span>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12" style="padding: inherit; border: thin solid #00FFFF;"><strong><span class="auto-style11">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="30px"  Text="+" Width="30px"  style="font-weight: bold; font-size: medium;" OnClick="Button3_Click"     />
                        </span></strong></td>
                    <td class="auto-style7" style="padding: inherit; margin: inherit; border: thin solid #00FFFF;"><strong><span class="auto-style11">
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="30px"  style="font-weight: bold; font-size: medium;" OnClick="Button4_Click"    />
                        </span></strong></td>
                    <td style="padding: inherit; border: thin solid #00FFFF;" class="auto-style9"><strong><span class="auto-style8">ONAYLI TARİF ÖNERİ </span></strong><span class="auto-style8"><strong style="border: thin none #00FFFF">LİSTESİ</strong></span></td>
                </tr>
            </table>
            </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="449px" CssClass="auto-style3" Height="260px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style27">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("recipeName") %>' style="font-size: medium"></asp:Label>
                        </td>
                        <td class="auto-style13">
                          <a href="AdminTarifOnerDetay.aspx?recipeId=<%#Eval("recipeId") %>"> <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/iconlar/öneri.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
