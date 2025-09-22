<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="web_formulario.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%-- 
                public int Id { get; set; }
                public string Modelo { get; set; }
                public string Descripcion { get; set; }
                public string Color { get; set; }
                public DateTime Fecha { get; set; }
                public bool Usado { get; set; }
                public bool Importado { get; set; }
    --%>

    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="txtId" class="form-label">Id</label>
                <asp:TextBox ID="txtId" runat="server" CssClass="form-control" Placeholder="Id"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtModelo" class="form-label">Modelo</label>
                <asp:TextBox ID="txtModelo" runat="server" CssClass="form-control" Placeholder="Modelo"></asp:TextBox>
            </div>

        </div>
    </div>



</asp:Content>
