<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesajlar.aspx.cs" Inherits="RecipeSite.AdminMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style11 {
            color: #003399;
        }
        .auto-style20 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style27 {
            width: 237px;
            text-align: left;
        }
        .auto-style26 {
            text-align: center;
        }
        .auto-style38 {
            background-color: #00FFFF;
        }
        .auto-style40 {
            width: 32px;
            background-color: #00FFFF;
        }
        .auto-style41 {
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style13" Height="40px">
            <span>
            <td class="auto-style24"></td>
            </span>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style40" style="border: thin solid #00FFFF"><strong><span class="auto-style11">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"    />
                        </span></strong></td>
                    <td class="auto-style40" style="border: thin solid #00FFFF"><strong><span class="auto-style11">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"   />
                        </span></strong></td>
                    <td style="border: thin solid #00FFFF" class="auto-style38"><strong><span class="auto-style41">MESAJ </span></strong><span class="auto-style41"><strong style="border: thin solid #00FFFF">LİSTESİ</strong></span></td>
                </tr>
            </table>
            </asp:Panel>

    <asp:Panel ID="Panel3" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px" CssClass="auto-style3" Height="260px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style27">
                            <a href='AdminMesajDetay.aspx?messageId=<%#Eval("messageId") %>'>
                            <asp:Image ID="Image4" runat="server" Height="19px" ImageUrl="~/iconlar/message.png" Width="22px" />
                            </a>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("messageSender") %>' style="font-size: medium"></asp:Label>
                        </td>
                        <td class="auto-style26">
                           <a href="AdminMesajDetay.aspx?messageId=<%#Eval("messageId") %>"><asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/iconlar/read.png" Width="40px" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />

            </asp:Content>
