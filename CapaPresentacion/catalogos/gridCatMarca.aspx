﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="gridCatMarca.aspx.cs" Inherits="CapaPresentacion.gridCatMarca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <label><h2>Catálogo de marcas (catálogo primario)</h2></label>
    <br />
    <br />
    <asp:GridView ID="dtgMostrarMarca" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" OnRowCommand="dtgMostrarMarca_RowDeleting" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idMarca" DataSourceID="catMarcas" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="dtgMostrarMarca_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="idMarca" HeaderText="idMarca" InsertVisible="False" ReadOnly="True" SortExpression="idMarca" />
            <asp:BoundField DataField="nombreMarca" HeaderText="nombreMarca" SortExpression="nombreMarca" />
             <asp:TemplateField HeaderText="Editar">
                                <ItemTemplate>
                                    <asp:Button ID="btnEditar" CommandName="Editar" runat="server" Text="Editar" CssClass="btn btn-info" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Eliminar">
                                <ItemTemplate>
                                    <asp:Button ID="btnEliminar" CommandName="Eliminar" runat="server" Text="Eliminar"  CssClass="btn btn-danger" />
                                </ItemTemplate>
                            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="catMarcas" runat="server" ConnectionString="<%$ ConnectionStrings:AlmacenTecnoConnectionString %>" SelectCommand="SELECT * FROM [catMarcas]" DeleteCommand="DELETE FROM [catMarcas] WHERE [idMarca] = @idMarca" UpdateCommand="UPDATE [catMarcas] SET [nombreMarca] = @nombreMarca WHERE [idMarca] = @idMarca"></asp:SqlDataSource>
   
</asp:Content>