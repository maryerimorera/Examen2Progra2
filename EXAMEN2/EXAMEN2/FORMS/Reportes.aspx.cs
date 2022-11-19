using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EXAMEN2.FORMS
{
    public partial class Reportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarGrid();
            }
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["EXAMEN2ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT c.NomApels, p.Nombre, p.Precio, m.Piso FROM CAJEROS c, PRODUCTOS p INNER JOIN MAQUINAS m ON p.CodigoP = m.CodigoM"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }

                    }
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}