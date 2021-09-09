<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="RecipeSite.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        text-align: center;
        width: 405px;
    }
    .auto-style5 {
        font-size: x-large;
    }
    .auto-style6 {
        margin-right: 2px;
    }
    .auto-style8 {
        width: 405px;
    }
    .auto-style10 {
        width: 103%;
    }
    .auto-style13 {
        width: 405px;
        background-color: #FFFF66;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style6">
    <ItemTemplate>
        <table class="auto-style10">
            <tr>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style5" Text='<%# Eval("foodName") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <strong>Malzemeler: </strong>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("foodMaterials") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Tarif: </strong>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("foodRecipes") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image2" runat="server" Height="250px" Width="422px" ImageUrl='<%# Eval("foodImage") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <strong>Puan: </strong>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("foodPoint") %>'></asp:Label>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>EklenmeTarihi:</strong><asp:Label ID="Label12" runat="server" Text='<%# Eval("foodDate") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>


