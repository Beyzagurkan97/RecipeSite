<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="RecipeSite.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        font-size: xx-large;
        color: #FFFF99;
        background-color: #FF9966;
    }
    .auto-style5 {
        width: 100%;
    }
        .auto-style9 {
            color: #666699;
            font-size: large;
            text-align: center;
        }
        .auto-style10 {
            width: 118px;
        }
        .auto-style11 {
            width: 118px;
            text-align: right;
        }
        .auto-style12 {
            text-align: justify;
        }
        .auto-style13 {
            font-size: medium;
            margin-left: 53px;
            font-weight: bold;
            background-color: #FFFF66;
        }
        .auto-style15 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            width: 221px;
            background: #FFFF99 url('images/bg.jpg') no-repeat;
            color: #747862;
            height: 20px;
            padding: 4px 8px;
            margin-bottom: 0px;
        }
    .auto-style6 {
        font-size: x-small;
    }
        .auto-style16 {
            font-size: large;
            color: #666666;
        }
        .auto-style17 {
            color: #FFFF66;
        }
        .auto-style18 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
<asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style5">
            <tr>
                <td><strong>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style16" Text='<%# Eval("commentNameSurname") %>'></asp:Label>
                    <span class="auto-style17">&nbsp; </span>&nbsp;
                    </strong></td>
            </tr>
        </table>
        <table class="auto-style5">
            <strong>
            <tr>
                <td style="border-bottom-style: ridge; border-bottom-width: medium; border-bottom-color: #FFFFCC;"><strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("commentContent") %>'></asp:Label>
                    </strong></td>
            </tr>
            </strong>
            <tr>
                <td style="border-bottom-style: ridge; border-bottom-width: medium; border-bottom-color: #FFFFCC;"><strong>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("commentDate") %>'></asp:Label>
                    </strong></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
        <br />
        </strong>
        <div style="background-color:#FFCC99" class="auto-style9"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style18">YORUM YAPMA PANELİ</span></strong></div>
    <strong>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">Ad Soyad:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="262px" Height="25px" CssClass="auto-style15"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Mail:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="262px" Height="25px" CssClass="auto-style15"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Yorumunuz:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="264px" Height="100px" CssClass="auto-style15"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style12">&nbsp;<asp:Button ID="Button1" runat="server" Text="Yorum Yap" Width="150px" CssClass="auto-style13" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </asp:Panel>

</asp:Content>
