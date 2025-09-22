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
                // 1. Creamos una lista de objetos "Auto" para mostrar.
                List<Auto> lista = new List<Auto>();
                //lista.Add(new Auto { Modelo = "Corolla", Color = "Rojo", Usado = false, Importado = true });
                //lista.Add(new Auto { Modelo = "Focus", Color = "Azul", Usado = true, Importado = false });
                //lista.Add(new Auto { Modelo = "Cruze", Color = "Blanco", Usado = false, Importado = true });

                // 2. Asignamos la lista de autos como la fuente de datos de la grilla.
                dgvAutos.DataSource = lista;

                // 3. Enlazamos los datos a la grilla para que se muestren.
                dgvAutos.DataBind();
            }
        }
    }
}