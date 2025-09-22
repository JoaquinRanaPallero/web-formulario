using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    // Esta clase define el "molde" o las propiedades de un Auto.
    public class Auto
    {
        public int Id { get; set; }
        public string Modelo { get; set; }
        public string Descripcion { get; set; }
        public string Color { get; set; }
        public DateTime Fecha { get; set; }
        public bool Usado { get; set; }
        public bool Importado { get; set; }
    }

    // Esta clase se encarga de la "lógica de negocio".
    // Por ejemplo, acceder a los datos, listarlos, etc.
    public class AutoNegocio
    {
        public List<Auto> listar()
        {
            List<Auto> lista = new List<Auto>();

            // Creamos dos autos de ejemplo para la lista
            lista.Add(new Auto());
            lista.Add(new Auto());

            // Asignamos valores al primer auto de la lista
            lista[0].Id = 1;
            lista[0].Modelo = "Golf";
            lista[0].Descripcion = "Lindo auto familiar";
            lista[0].Color = "Rojo";
            lista[0].Fecha = DateTime.Now;
            lista[0].Usado = false;
            lista[0].Importado = true;

            // Asignamos valores al segundo auto de la lista
            lista[1].Id = 2;
            lista[1].Modelo = "Mustang";
            lista[1].Descripcion = "Potente y deportivo";
            lista[1].Color = "Negro";
            lista[1].Fecha = new DateTime(2022, 5, 10);
            lista[1].Usado = true;
            lista[1].Importado = true;

            return lista;
        }
    }
}