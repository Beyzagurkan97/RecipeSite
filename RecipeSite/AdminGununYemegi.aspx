<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminGununYemegi.aspx.cs" Inherits="RecipeSite.AdminGununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style30 {
            width: 27px;
            height: 28px;
            background-color: #00FFFF;
        }
        .auto-style20 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style31 {
            height: 28px;
            font-size: large;
            background-color: #00FFFF;
        }
        .auto-style32 {
            text-align: right;
        }
        .auto-style33 {
            width: 18px;
            height: 15px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13">
        <table class="auto-style1">
            <tr>
                <td class="auto-style30" style="padding: inherit; margin: inherit; border-style: solid; border-width: thin; border-color: #00FFFF;"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style30" style="padding: inherit; margin: inherit; border-style: solid; border-width: thin; border-color: #00FFFF;"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style31" style="padding: inherit; margin: inherit; border-style: solid; border-width: thin; border-color: #00FFFF;"><strong>YEMEK&nbsp; LİSTESİ </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style3">
        <asp:DataList ID="DataList1" runat="server" Width="449px" CssClass="auto-style34">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">                      
                            <img alt="" class="auto-style33" src="iconlar/listeleme.jpg" />
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" style="font-size: large" Text='<%# Eval("foodName") %>'></asp:Label>
                        </td>
                        <td class="auto-style32">
                            <a href='AdminYemekDuzenle.aspx?foodId=<%# Eval("foodId") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/choose.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <br />
</asp:Panel>
</asp:Content>
