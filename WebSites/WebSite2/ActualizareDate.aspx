﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ActualizareDate.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <h1>Actualizare date</h1>
    <table border="1">
        <tr>
            <td>
                <label>Nr crt:</label></td>
            <td>
                <asp:TextBox ID="tbNrCrt" runat="server"></asp:TextBox></td>
            <td>
                <button>Cauta</button></td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NRCRT" DataSourceID="SqlDataSource1" Font-Size="X-Small">
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
            <asp:BoundField DataField="IMPOZIT" HeaderText="IMPOZIT" SortExpression="IMPOZIT" />
            <asp:BoundField DataField="CAS" HeaderText="CAS" SortExpression="CAS" />
            <asp:BoundField DataField="SOMAJ" HeaderText="SOMAJ" SortExpression="SOMAJ" />
            <asp:BoundField DataField="SANATATE" HeaderText="SANATATE" SortExpression="SANATATE" />
            <asp:BoundField DataField="AVANS" HeaderText="AVANS" SortExpression="AVANS" />
            <asp:BoundField DataField="RETINERI" HeaderText="RETINERI" SortExpression="RETINERI" />
            <asp:BoundField DataField="RESTPLATA" HeaderText="RESTPLATA" SortExpression="RESTPLATA" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;ANGAJATI&quot; WHERE (&quot;NRCRT&quot; &gt; :Nrcrt1)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tbNrCrt" Name="NRCRT" PropertyName="Text" Type="Decimal" DefaultValue="0" />
        </SelectParameters>
    </asp:SqlDataSource>

    <table style="width: 100%;">
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label3" runat="server" Text="Nume"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label4" runat="server" Text="Prenume"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 280px">
                <asp:Label ID="Label5" runat="server" Text="Functia"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
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