<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ejemploGridView.aspx.cs" Inherits="ejemploFormView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_alta" DataSourceID="SqlDataSource1" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="id_alta" HeaderText="id_alta" InsertVisible="False" ReadOnly="True" SortExpression="id_alta" />
            <asp:BoundField DataField="nombre_paciente" HeaderText="nombre_paciente" SortExpression="nombre_paciente" />
            <asp:BoundField DataField="tarjeta_sanitaria" HeaderText="tarjeta_sanitaria" SortExpression="tarjeta_sanitaria" />
            <asp:BoundField DataField="enfermedad" HeaderText="enfermedad" SortExpression="enfermedad" />
            <asp:BoundField DataField="nombre_doctor" HeaderText="nombre_doctor" SortExpression="nombre_doctor" />
            <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
            <asp:BoundField DataField="hora" HeaderText="hora" SortExpression="hora" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hospitalDBConnectionString %>" SelectCommand="SELECT * FROM [historial_alta]"></asp:SqlDataSource>
</asp:Content>

