<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ModificareProcente.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <h1>Modificare procente</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Font-Size="Medium">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="CAS" HeaderText="CAS" SortExpression="CAS" />
            <asp:BoundField DataField="SANATATE" HeaderText="SANATATE" SortExpression="SANATATE" />
            <asp:BoundField DataField="SOMAJ" HeaderText="SOMAJ" SortExpression="SOMAJ" />
            <asp:BoundField DataField="IMPOZIT" HeaderText="IMPOZIT" SortExpression="IMPOZIT" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM &quot;PROCENTE&quot; WHERE (&quot;ID&quot; = :ID1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tbID" DefaultValue="0" Name="ID" PropertyName="Text" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table border="1">
        <tr>
            <td>
                <label>ID:</label></td>
            <td>
                <asp:TextBox ID="tbID" runat="server"></asp:TextBox></td>
            <td>
                <button>Cauta</button></td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label3" runat="server" Text="CAS"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label4" runat="server" Text="Sanatate"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label5" runat="server" Text="Somaj"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label6" runat="server" Text="Impozit"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
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

