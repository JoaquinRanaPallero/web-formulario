<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="web_formulario._Default" %>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%-- 
    <style>
        .oculto {
            display: none;
    </style>
    --%>   


    <div class="row">
        <div class="col">
            <asp:GridView ID="dgvAutos" DataKeyNames="Id" runat="server" OnSelectedIndexChanged="dgvAutos_SelectedIndexChanged" CssClass="table table-dark table-bordered" AutoGenerateColumns="false">
                <Columns>
                       <%--  <asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto"/>     --%>   

                    <asp:BoundField HeaderText="Modelo" DataField="Modelo" />
                    <asp:BoundField HeaderText="Color" DataField="Color" />
                    <asp:BoundField HeaderText="Usado" DataField="Usado" />
                    <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />


                </Columns>
            </asp:GridView>
        <a href="AutoForm.aspx" class="btn btn-primary">Agregar Auto</a> 



        </div>
    </div>




    <%--    --%>
</asp:Content>
