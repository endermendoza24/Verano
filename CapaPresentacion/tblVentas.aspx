<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="tblVentas.aspx.cs" Inherits="CapaPresentacion.tablas.tblVentas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Realizar una venta</h2>
        <div class="form-group">
            <label>Fecha</label>
            <input type="date" class="form-control datetimepicker" value="10/02/2021" id="dtpFecha" runat="server" />
        </div>
        <div class="form-group">
            <label>Id cliente</label>
            <asp:DropDownList ID="drpIdCliente" CssClass="form-control" runat="server" DataSourceID="cliente" DataTextField="primerNombre" DataValueField="idCliente"></asp:DropDownList>
            <asp:SqlDataSource ID="cliente" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenTecnoConnectionString %>" SelectCommand="SELECT * FROM [tblClientes]"></asp:SqlDataSource>
        </div>
        <div class="form-group">
            <label>Id empleado</label>
            <asp:DropDownList ID="drpIdEmpleado" CssClass="form-control" runat="server" DataSourceID="empleado" DataTextField="primerNombre" DataValueField="idEmpleado"></asp:DropDownList>
            <asp:SqlDataSource ID="empleado" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenTecnoConnectionString %>" SelectCommand="SELECT * FROM [catEmpleados]"></asp:SqlDataSource>
        </div>
        <div class="form-group">
            <label>Artículo</label>
            <asp:DropDownList ID="drpArt" CssClass="form-control" runat="server" DataSourceID="art" DataTextField="nombreArticulo" DataValueField="idArticulo"></asp:DropDownList>
            <asp:SqlDataSource ID="art" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenTecnoConnectionString %>" SelectCommand="SELECT * FROM [catArticulos]"></asp:SqlDataSource>
        </div>
        <div class="form-group">
            <label>Cantidad</label>
            <asp:TextBox ID="txtCantidad" CssClass="form-control" placeholder="Cantidad" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Precio</label>
            <asp:TextBox ID="txtPrecio" CssClass="form-control" placeholder="Precio" runat="server"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="btnGuardar" CssClass="btn btn-danger" runat="server" Text="Hacer venta" OnClick="btnGuardar_Click" /> &nbsp
        <asp:Button ID="btnVerVentas" CssClass="btn btn-success" runat="server" Text="Ver ventas" OnClick="btnVerVentas_Click" />
    </div>
</asp:Content>
