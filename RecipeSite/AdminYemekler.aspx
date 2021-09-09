<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYemekler.aspx.cs" Inherits="RecipeSite.AdminYemekler" %>

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
            margin-left: 85px;
        }
        .auto-style30 {
            width: 27px;
            height: 28px;
        }
        .auto-style31 {
            height: 28px;
            font-size: large;
        }
        .auto-style32 {
            height: 28px;
            background-color: #00FFFF;
            font-size: large;
        }
        .auto-style33 {
            width: 27px;
            height: 28px;
            background-color: #00FFFF;
        }
        .auto-style35 {
            width: 149px;
        }
        .auto-style36 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13">
        <table class="auto-style1">
            <tr>
                <td class="auto-style30" style="padding: inherit; margin: inherit; border-style: solid; border-width: thin; border-color: #00FFFF;"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style30" style="padding: inherit; margin: inherit; border-style: solid; border-width: thin; border-color: #00FFFF;"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style31" style="padding: inherit; margin: inherit; border-style: solid; border-width: thin; border-color: #00FFFF;"><strong>YEMEK&nbsp; LİSTESİ </strong></td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("foodName") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                          <a href="AdminYemekler.aspx?foodId=<%# Eval("foodId") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style8">
                           <a href="AdminYemekDuzenle.aspx?foodId=<%# Eval("foodId") %>" > <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update2.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style13">
         <table class="auto-style1">
            <tr>
                <td class="auto-style33" style="padding: inherit; margin: inherit; border-style: solid; border-width: thin; border-color: #00FFFF;"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style33" style="padding: inherit; margin: inherit; border-style: solid; border-width: thin; border-color: #00FFFF;"<strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td class="auto-style32" style="padding: inherit; margin: inherit; border-style: inherit; border-width: thin; border-color: #00FFFF"><strong>YEMEK EKLEME</strong></td>
            </tr>
        </table>

    </asp:Panel>

<br />
       
       

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style36"><strong>
                    <asp:Button ID="BtnEkle0" runat="server" CssClass="auto-style23" Height="30px" OnClick="BtnEkle0_Click" Text="Ekle" Width="85px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

   
</asp:Content>




