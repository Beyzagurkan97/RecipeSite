<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminTarifOnerDetay.aspx.cs" Inherits="RecipeSite.AdminTarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style12 {
            text-align: justify;
            width: 324px;
        }
        .auto-style13 {
            font-size: medium;
            margin-left: 53px;
            font-weight: bold;
            background-color: #00FFFF;
        }
        .auto-style16 {
            width: 324px;
        }
        .auto-style17 {
            width: 168px;
        }
        .auto-style18 {
            width: 168px;
            text-align: right;
        }
        .auto-style19 {
            color: #FFFF99;
            background-color: #66FFFF;
        }
        .auto-style20 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            width: 221px;
            background: #00FFFF url('images/bg.jpg') no-repeat;
            color: #747862;
            height: 20px;
            padding: 4px 8px;
            margin-bottom: 0px;
        }
        .auto-style21 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            width: 221px;
            background: #66FFFF url('images/bg.jpg') no-repeat;
            color: #747862;
            height: 20px;
            padding: 4px 8px;
            margin-bottom: 0px;
        }
        .auto-style22 {
            width: 168px;
            height: 40px;
        }
        .auto-style23 {
            width: 324px;
            height: 40px;
        }
        .auto-style24 {
            background-color: #66FFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">Tarif Ad:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox1" runat="server" Width="262px" Height="25px" CssClass="auto-style20"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Tarif Malzeme:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox2" runat="server" Width="262px" Height="25px" CssClass="auto-style20"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Yapılış:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="264px" Height="100px" CssClass="auto-style21"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Tarif Resim:</td>
                <td class="auto-style12">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style19" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Tarif Öneren:</td>
                <td class="auto-style16"><strong>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style21" Height="25px" Width="262px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style18">Öneren Mail:</td>
                <td class="auto-style16"><strong>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style21" Height="25px" Width="262px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style17">Kategori:</td>
                <td class="auto-style16">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style24" Height="25px" Width="262px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" OnClick="Button1_Click" Text="Tarif Onayla" Width="150px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
