<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="RecipeSite.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        font-size: x-large;
    }
    .auto-style6 {
        background-color: #FFFF99;
    }
    .auto-style7 {
        background-color: #FF9966;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style4">
            <tr>
                <td class="auto-style6"><strong>

                   <a href="YemekDetay.aspx?FoodId=<%# Eval("FoodId") %>"><asp:Label ID="Label3" runat="server" CssClass="auto-style5" 
                       Text='<%# Eval("foodName") %>'> </asp:Label></a>
                   
                    </strong></td>
            </tr>
            <tr>
                <td><strong>Malzemeler:</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("foodMaterials") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi: </strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("foodRecipes") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong><em>Eklenme Tarihi:</em></strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("foodDate") %>'></asp:Label>
                    &nbsp;-&nbsp;<strong><em>Puan:</em></strong> <strong><em>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("foodPoint") %>'></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td class="auto-style7" style="border-bottom-style: solid; border-bottom-width: thin;">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
    
</asp:Content>
