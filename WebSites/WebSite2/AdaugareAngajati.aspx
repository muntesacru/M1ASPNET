<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdaugareAngajati.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Adaugare</h1>
     <table style="width:100%;">
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label3" runat="server" Text="Nume"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label4" runat="server" Text="Prenume"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label5" runat="server" Text="Functia"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label6" runat="server" Text="Salar Negociabil"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label7" runat="server" Text="Salar Realizat"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label8" runat="server" Text="Vechime"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label9" runat="server" Text="Spor"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label10" runat="server" Text="Premii Brute"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server">0</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label11" runat="server" Text="Compensatii"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label12" runat="server" Text="Avans"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label13" runat="server" Text="Retineri"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
            </td>
            <td>
                <asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
        </tr>

    </table>
</asp:Content>

