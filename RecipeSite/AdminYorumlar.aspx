<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYorumlar.aspx.cs" Inherits="RecipeSite.AdminYorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            color: #003399;
        }
        .auto-style13 {
            background-color: #00FFFF;
            margin-left: 0px;
        }
        .auto-style25 {
            width: 32px;
        }
        .auto-style20 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style26 {
            text-align: right;
        }
        .auto-style27 {
            width: 237px;
            text-align: left;
        }
        .auto-style28 {
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
                    <td class="auto-style25" style="border: thin solid #00FFFF"><strong><span class="auto-style11">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                        </span></strong></td>
                    <td class="auto-style25" style="border: thin solid #00FFFF"><strong><span class="auto-style11">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                        </span></strong></td>
                    <td style="border: thin solid #00FFFF"><strong><span class="auto-style28">ONAYLI YORUM </span> </strong><span class="auto-style28"><strong>LİSTESİ</strong></span></td>
                </tr>
            </table>
            </asp:Panel>

    <asp:Panel ID="Panel3" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px" CssClass="auto-style3" Height="260px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style27">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("commentNameSurname") %>'></asp:Label>
                        </td>
                        <td class="auto-style26">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style26">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update2.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />

<asp:Panel ID="Panel1" runat="server" CssClass="auto-style13" Height="40px">
            <span>
            <td class="auto-style24"></td>
            </span>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style25" style="border: thin solid #00FFFF"><strong><span class="auto-style11">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                        </span></strong></td>
                    <td class="auto-style25" style="border: thin solid #00FFFF"><strong><span class="auto-style11">
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                        </span></strong></td>
                    <td style="border: thin solid #00FFFF"><strong><span class="auto-style28">ONAYSIZ YORUM</span></strong><span class="auto-style28"><strong> LİSTESİ</strong></span></td>
                </tr>
            </table>
            </asp:Panel>
    <br />
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="449px" CssClass="auto-style3" Height="260px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style27">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text='<%# Eval("commentNameSurname") %>'></asp:Label>
                        </td>
                        <td class="auto-style26">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style26">
                           <a href="AdminYorumDetay.aspx?commentId=<%# Eval("commentId") %>" > <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update2.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </asp:Content>



