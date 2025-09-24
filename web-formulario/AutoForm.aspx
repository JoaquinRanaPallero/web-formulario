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
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripcion</label>
                <asp:TextBox ID="txtDescripcion" textmode="MultiLine" runat="server" CssClass="form-control" Placeholder="Modelo"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="ddlColores" class="form-label">Color</label>
                <asp:DropDownList ID="ddlColores" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtFecha" class="form-label">Fecha</label>
                <asp:TextBox ID="txtFecha" textmode="Date" runat="server" CssClass="form-control" Placeholder="Modelo"></asp:TextBox>
            </div>
            <asp:CheckBox Text="" ID="chkUsado" runat="server" />
            <asp:Label Text="Usado" CssClass="form-check-label" runat="server" />
            <div class="mb-3">
                <asp:RadioButton ID="rdbImportado" AutoPostBack="True" OnCheckedChanged="rdbImportado_CheckedChanged" Text="Importado" runat="server" GroupName="Importado"/>
                <asp:RadioButton ID="rdbNacional" AutoPostBack="True" OnCheckedChanged="rdbImportado_CheckedChanged" Text="Nacional" Checked="true" runat="server" GroupName="Importado"/>
            </div>
            <div class="mb-3">
                <asp:Button Text="Aceptar" ID="btnAceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" runat="server" />
                <a href="Default.aspx">Cancelar</a>
            </div>
           
        </div>
    </div>



</asp:Content>
