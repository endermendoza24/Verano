<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="catEmpleados.aspx.cs" Inherits="CapaPresentacion.catalogos.catEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Registrar empleado</h2>
        <div class="form-group">
            <label>Número de cédula</label>
            <asp:TextBox ID="txtCedula" CssClass="form-control" placeholder="Número de cédula" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Primer nombre</label>
            <asp:TextBox ID="txtNombre" CssClass="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Apellido</label>
            <asp:TextBox ID="txtApellido" CssClass="form-control" placeholder="Apellido" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Fecha de entrada</label>
            <input type="date" id="dtpFecha" runat="server" class="form-control" />
        </div>
        <br />
        <asp:Button ID="btnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />&nbsp
        <asp:Button ID="btnVerEmpleados" CssClass="btn btn-success" runat="server" Text="Ver empleados" OnClick="btnVerEmpleados_Click" />

    </div>
</asp:Content>
