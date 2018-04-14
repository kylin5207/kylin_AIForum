<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mytrip.aspx.cs" Inherits="Mytrip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/mytrip.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="con-title">
        <img src="image/mytrip.jpg"  width="1350" height="160" style="margin-top:-57px; margin-left:0px"/>
    </div>

    <div class="contain">
        <table height="700" width="1000px" class="contable">
            <tr class="spacename">
                <td>
                    <asp:Label ID="spacename" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td>
                    
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

