using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EXAMEN2.FORMS
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bregistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reportes.aspx");
        }

        protected void Bguardar_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["EXAMEN2ConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            string sql = $"insert into VENTA (FK_Cajero, FK_Maquina, FK_Maquina, FK_Producto) values ('{TnombreC.Text}', '{TnombreP.Text}', '{Tprecio.Text}', '{Tpiso.Text}')";
            SqlCommand comando = new SqlCommand(sql, conexion);
            
            conexion.Close();

            TnombreC.Text = " ";
            TnombreP.Text = " ";
            Tprecio.Text = " ";
            Tpiso.Text = " ";

            lmensaje.Text = "La venta se guardo correctamente";
        }
    }
}