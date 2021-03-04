<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CapaPresentacion.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/desktop.jpg"  alt="First slide"/>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/laptop.jpg" alt="Second slide"/>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/printer.jpg" alt="Third slide"/>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    <br />
    <br />
    <br />



 <div class="card-deck">
  <div class="card">
    <img class="card-img-top" src="images/marcas.jpg" alt="Card image cap"/>
    <div class="card-body">
      <h5 class="card-title">Catálogo marca</h5>
      <p class="card-text">Desde acá puede añadir marcas en la abse de datos.</p>
        <asp:Button ID="btnMarca" CssClass="btn btn-primary" runat="server" Text="Ir a marcas" PostBackUrl="~/CatMarca.aspx" />
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="images/articulos.jpg" alt="Card image cap"/>
    <div class="card-body">
      <h5 class="card-title">Catálogo artículos</h5>
      <p class="card-text">En este catálogo puede añadir artículos a la base de datos</p>
        <asp:Button ID="btnArt" CssClass="btn btn-primary" runat="server" Text="Ir a artículos" PostBackUrl="~/catArticulos.aspx" />
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="images/empleado.png" alt="Card image cap"/>
    <div class="card-body">
      <h5 class="card-title">Empleados</h5>
      <p class="card-text">En esta sección puede agregar, eliminar o editar a los colaboradores de la empresa</p>
        <asp:Button ID="btnEmpl" runat="server" CssClass="btn btn-primary" Text="Ir a empleados" PostBackUrl="~/catEmpleados.aspx" />
    </div>
  </div>
</div>
    <br />
    <div class="card-deck">
  <div class="card">
    <img class="card-img-top" src="images/cliente.png" alt="Card image cap"/>
    <div class="card-body">
      <h5 class="card-title">Clientes</h5>
      <p class="card-text">Desde esta página puede manejar los clientes de la empresa.</p>
        <asp:Button ID="btnCl" runat="server" CssClass="btn btn-primary" Text="Ir a clientes" PostBackUrl="~/catClientes.aspx" />
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="images/proveedore.png" alt="Card image cap"/>
    <div class="card-body">
      <h5 class="card-title">Proveedores</h5>
      <p class="card-text">Acá se puede manejar los proveedores de una manera bastante fácil en la base de datos</p>
        <asp:Button ID="btnPro" CssClass="btn btn-primary" runat="server" Text="Ir a proveedor" PostBackUrl="~/catProveedores.aspx" />
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="images/compra.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Compras</h5>
      <p class="card-text">El manejo de compras es muy fácil de hacer desde acá.</p>
        <asp:Button ID="btnCo" runat="server" Text="Ir a compras" CssClass="btn btn-primary" PostBackUrl="~/tblCompras.aspx" />
    </div>
  </div>
</div>
    <br />
    <div class="card-deck">
  <div class="card">
    <img class="card-img-top" src="images/ventas.jpg" alt="Card image cap"/>
    <div class="card-body">
      <h5 class="card-title">Ventas</h5>
      <p class="card-text">Manejo de ventas de manera sencilla y clara usando esta interfaz</p>
        <asp:Button ID="btnve" runat="server" CssClass="btn btn-primary" Text="Ir a ventas" PostBackUrl="~/tblVentas.aspx" />
    </div>
  </div>
  
</div>


</asp:Content>
