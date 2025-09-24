using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio; // ¡No olvides agregar esta línea!



namespace web_formulario
{
    public partial class _Default : Page 
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Usamos !IsPostBack para que los datos se carguen solo la primera vez que se visita la página,
            // y no cada vez que se presiona un botón (postback).
            if (!IsPostBack)
            {
                if(Session["listaAutos"] == null)
                {
                    AutoNegocio negocio = new AutoNegocio();
                    Session.Add("listaAutos", negocio.listar());
                }

                dgvAutos.DataSource = Session["listaAutos"];

                // Enlazamos los datos a la grilla para que se muestren.
                dgvAutos.DataBind();
            }
        }
    }
}