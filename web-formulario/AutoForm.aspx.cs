using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace web_formulario
{
    public partial class AutoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {     
                ddlColores.Items.Add("Negro");
                ddlColores.Items.Add("Blanco");
                ddlColores.Items.Add("Rojo");
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            // TODO: tu lógica acá
            // Ejemplo: Response.Redirect("Default.aspx");
            Auto a = new Auto();
            a.Id = int.Parse(txtId.Text);
            a.Modelo = txtModelo.Text;
            a.Descripcion = txtDescripcion.Text;
            a.Color = ddlColores.SelectedValue;
            a.Fecha = DateTime.Parse(txtFecha.Text);
            a.Usado = chkUsado.Checked;
            //capturar estado de los radio button
            if (rdbImportado.Checked)
                a.Importado = true;
            else if (rdbNacional.Checked)
                a.Importado = false;

            //a la base de datos usando algún metodo
            // ((List<Auto>)Session["listaAutos"]).Add(a)
            List<Auto> temporal = (List<Auto>)Session["listaAutos"];
            temporal.Add(a);

            Response.Redirect("Default");


        }

        protected void rdbImportado_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}