<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKategoriler.aspx.cs" Inherits="RecipeSite.AdminKategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
        text-align: left;
        width: 258px;
    }
    .auto-style8 {
        text-align: right;
    }
    .auto-style9 {
        text-align: right;
        width: 90px;
        background:#CCFFFF;
    }
    .auto-style10 {
        font-size: large;
    }
        .auto-style11 {
            color: #003399;
        }
        .auto-style13 {
            background-color: #00FFFF;
            margin-left: 0px;
        }
        .auto-style20 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: medium;
            margin-left: 50px;
        }
        .auto-style24 {
            text-align: left;
            background-color: #00FFFF;
            color: #000000;
        }
        .auto-style25 {
            width: 32px;
        }
        .auto-style27 {
            width: 33px;
            background-color: #00FFFF;
        }
        .auto-style28 {
            background-color: #00FFFF;
            font-size: large;
        }
        .auto-style29 {
            width: 31px;
            background-color: #00FFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13">
        <span>
        <td class="auto-style24"></td>
        </span>
        <table class="auto-style1">
            <tr>
                <td class="auto-style25" style="border: thin solid #00FFFF"><strong><span class="auto-style11">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </span></strong></td>
                <td class="auto-style25" style="border: thin solid #00FFFF"><strong><span class="auto-style11">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </span></strong></td>
                <td style="border: thin solid #00FFFF"><span class="auto-style10"><strong>KATEGORİ LİSTESİ</strong></span></td>
            </tr>
        </table>
        </span></td>
        </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style3">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("CategoryName") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                          <a href="AdminKategoriler.aspx?categoryId=<%# Eval("categoryId") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style8">
                           <a href="AdminKategoriDuzenle.aspx?categoryId=<%# Eval("categoryId") %>" > <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update2.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style13">
        <span>
        <td class="auto-style24"></td>
        </span>
           <table class="auto-style1">
        <tr>
            <td class="auto-style29" style="border: thin solid #00FFFF"><span><strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="30px" OnClick="Button3_Click" Text="+" Width="30px" />
                    </strong></span></td>
            <td class="auto-style27" style="border: thin solid #00FFFF"><span><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="30px" OnClick="Button4_Click" Text="-" Width="30px" />
                    </strong></span></td>
            <td class="auto-style28" style="border: thin solid #00FFFF"><strong>KATEGORİ EKLEME</strong></td>
        </tr>
    </table>
        </span></td>
        </tr>
        </table>
    </asp:Panel>
    
    


    <br />
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
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
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style23" Text="Ekle" Width="74px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>

   
</asp:Content>



