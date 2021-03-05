<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="tblCompras.aspx.cs" Inherits="CapaPresentacion.tablas.tblCompras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Realizar compra</h2>
        <br />
        <div class="form-group">
            <label>Fecha de compra</label>
            <input type="date" runat="server" class="form-control" id="dtpFecha"/>
        </div>
        <div class="form-group">
            <label>Id proveedor</label>
            <asp:DropDownList ID="drpIdProveedor" CssClass="form-control" runat="server" DataSourceID="idProveedor" DataTextField="nombreProveedor" DataValueField="idProveedor"></asp:DropDownList>
            <asp:SqlDataSource ID="idProveedor" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenTecnoConnectionString %>" SelectCommand="SELECT * FROM [catProveedores]"></asp:SqlDataSource>
        </div>
        
        <div class="form-group">
            <label>Id empleado</label>
            <asp:DropDownList ID="drpIdEmpleado" CssClass="form-control" runat="server" DataSourceID="empleado" DataTextField="primerNombre" DataValueField="idEmpleado"></asp:DropDownList>
            <asp:SqlDataSource ID="empleado" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenTecnoConnectionString %>" SelectCommand="SELECT * FROM [catEmpleados]"></asp:SqlDataSource>
        </div>
         <div class="form-group">
            <label>Artículo</label>
             <asp:DropDownList ID="drpArticulo" CssClass="form-control" runat="server" DataSourceID="art" DataTextField="nombreArticulo" DataValueField="idArticulo"></asp:DropDownList>
             <asp:SqlDataSource ID="art" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenTecnoConnectionString %>" SelectCommand="SELECT * FROM [catArticulos]"></asp:SqlDataSource>
        </div>
        <div class="form-group">
            <label>Cantidad</label>
            <asp:TextBox ID="txtCantidad" placeholder="Cantidad"  CssClass="form-control"  runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Precio</label>
            <asp:TextBox ID="txtPrecio" placeholder="Precio"  CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
        
        <br />
        <asp:Button ID="btnGuardar" CssClass="btn btn-danger" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />&nbsp
        <asp:Button ID="btnVerCompras" CssClass="btn btn-success" runat="server" Text="Ver compras" OnClick="btnVerCompras_Click" />
    </div>
</asp:Content>
