<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="StergereAngajati.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Stergere</h1>
    <table style="width:100%;">
    <tr>
        <td style="width: 166px">
            <asp:Label ID="Label1" runat="server" Text="NUME"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="248px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 166px">
            <asp:Label ID="Label2" runat="server" Text="PRENUME"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="248px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 166px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cauta" />
        </td>
        <td>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
</table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NRCRT" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="NRCRT" HeaderText="NRCRT" ReadOnly="True" SortExpression="NRCRT" />
            <asp:BoundField DataField="NUME" HeaderText="NUME" SortExpression="NUME" />
            <asp:BoundField DataField="PRENUME" HeaderText="PRENUME" SortExpression="PRENUME" />
            <asp:BoundField DataField="FUNCTIE" HeaderText="FUNCTIE" SortExpression="FUNCTIE" />
            <asp:BoundField DataField="SALARNEGOCIAT" HeaderText="SALARNEGOCIAT" SortExpression="SALARNEGOCIAT" />
            <asp:BoundField DataField="SALARREALIZAT" HeaderText="SALARREALIZAT" SortExpression="SALARREALIZAT" />
            <asp:BoundField DataField="VECHIME" HeaderText="VECHIME" SortExpression="VECHIME" />
            <asp:BoundField DataField="SPOR" HeaderText="SPOR" SortExpression="SPOR" />
            <asp:BoundField DataField="PREMIIBRUTE" HeaderText="PREMIIBRUTE" SortExpression="PREMIIBRUTE" />
            <asp:BoundField DataField="COMPENSATIE" HeaderText="COMPENSATIE" SortExpression="COMPENSATIE" />
            <asp:BoundField DataField="TOTALBRUT" HeaderText="TOTALBRUT" SortExpression="TOTALBRUT" />
            <asp:BoundField DataField="BRUTIMPOZABIL" HeaderText="BRUTIMPOZABIL" SortExpression="BRUTIMPOZABIL" />
            <asp:BoundField DataField="AVANS" HeaderText="AVANS" SortExpression="AVANS" />
            <asp:BoundField DataField="RETINERI" HeaderText="RETINERI" SortExpression="RETINERI" />
            <asp:BoundField DataField="RESTPLATA" HeaderText="RESTPLATA" SortExpression="RESTPLATA" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ANGAJATI&quot;"></asp:SqlDataSource>
</asp:Content>

