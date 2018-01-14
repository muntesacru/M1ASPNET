<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ActualizareDate.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Actualizare date<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NRCRT" DataSourceID="SqlDataSource1" Font-Size="X-Small">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ANGAJATI&quot;"></asp:SqlDataSource>
</h1>
</asp:Content>

