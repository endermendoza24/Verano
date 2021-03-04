<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="catArticulos.aspx.cs" Inherits="CapaPresentacion.catarticulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Cátalogo Artículos (catálogo Secundario)</h1>
        <div class="form-group">
            <label>Nombre Artículo</label>
            <asp:TextBox Id="txtNombreArticulo" placeholder="Nombre artículo" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
             <label>Nombre marca</label>
            <asp:DropDownList ID="drpIdMarca" runat="server" DataSourceID="catMarca" DataTextField="nombreMarca" CssClass="custom-select" DataValueField="idMarca"></asp:DropDownList>
            <asp:SqlDataSource ID="catMarca" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenTecnoConnectionString %>" SelectCommand="SELECT * FROM [catMarcas]"></asp:SqlDataSource>
            <br />
        </div>
        <div class="form-group">
            <label>Nombre categoría</label>
            <asp:DropDownList ID="drpCategoria" runat="server" CssClass="form-control">
                <asp:ListItem>Desktop</asp:ListItem>
                <asp:ListItem>Laptops</asp:ListItem>
                <asp:ListItem>Impresoras</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <label>Proveedores</label>
            <asp:DropDownList ID="drpProveedores" CssClass="form-control" runat="server" DataSourceID="catProveedores" DataTextField="nombreProveedor" DataValueField="idProveedor"></asp:DropDownList>
            <asp:SqlDataSource ID="catProveedores" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenTecnoConnectionString %>" SelectCommand="SELECT * FROM [catProveedores]"></asp:SqlDataSource>
        </div>
        <br />
        <asp:Button Id="btnGuardar" CssClass="btn btn-danger" runat="server" Text="Guardar" OnClick="btnGuardar_Click" /> &nbsp  &nbsp
            <asp:Button Id="btnVerArticulos" CssClass="btn btn-success" runat="server" Text="Ver Articulos" OnClick="btnVerArticulos_Click" />
    </div>
</asp:Content>
