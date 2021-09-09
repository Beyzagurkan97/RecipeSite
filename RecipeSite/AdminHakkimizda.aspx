<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHakkimizda.aspx.cs" Inherits="RecipeSite.AdminHakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            text-align: left;
            background-color: #00FFFF;
            width: 36px;
        }
        .auto-style9 {
            margin-left: 160px;
        }
        .auto-style11 {
            text-align: left;
            background-color: #00FFFF;
            height: 28px;
        }
        .auto-style12 {
            width: 32px;
            background-color: #00FFFF;
            height: 26px;
        }
        .auto-style13 {
            text-align: left;
            background-color: #00FFFF;
            height: 26px;
        }
        .auto-style15 {
            font-weight: bold;
            font-size: small;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            width: 100%;
            height: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style13" Height="46px">
            <span>
            <td class="auto-style24"></td>
            </span>
            <table class="auto-style17">
                <tr>
                    <td class="auto-style12" style="padding: inherit; border: thin solid #00FFFF;"><span class="auto-style11"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="30px"  style="font-weight: bold; font-size: medium;" Text="+" Width="30px" OnClick="Button1_Click1" />
                        </strong></span></td>
                    <td class="auto-style7" style="padding: inherit; margin: inherit; border: thin solid #00FFFF;"><strong><span class="auto-style11">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="30px"  Text="-" Width="30px"  style="font-weight: bold; font-size: medium;" OnClick="Button2_Click"    />
                        </span></strong></td>
                    <td style="padding: inherit; border: thin solid #00FFFF;" class="auto-style9"><strong>HAKKIMIZDA</strong></td>
                </tr>
            </table>
            </asp:Panel>
    <asp:Panel runat="server"> 
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Panel ID="Panel3" runat="server">
                    <asp:TextBox ID="TextBox1" runat="server" Height="300px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Text="Güncelle"  OnClick="Button3_Click" Width="435px" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
      
        
    </table>
         </asp:Panel>
</asp:Content>
