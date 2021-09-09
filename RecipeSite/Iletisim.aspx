<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="RecipeSite.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
            width: 106px;
        }
    .auto-style7 {
        font-size: x-large;
        color: #993300;
        text-align: center;
    }
    .auto-style9 {
        color: #000000;
    }
        .auto-style10 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            margin-left: 50px;
            background-color: #FFFF66;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style7" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style9" style="font-size: 22px">MESAJ PANELİ</span></strong></td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5" Height="25px" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mail Adresi:</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" Height="25px" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="TxtKonu" runat="server" CssClass="tb5" Height="25px" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="40px" Text="Gönder" Width="150px" BackColor="" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
