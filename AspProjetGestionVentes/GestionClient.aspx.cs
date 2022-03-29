using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProjetGestionVentes
{
    public partial class GestionClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtbxNomClient.AutoPostBack = true;
        }

        protected void txtbxNomClient_TextChanged(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM CLIENT WHERE Nom LIKE '" + txtbxNomClient.Text + "%'";
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //Command Delete
            if (e.CommandName == "IsDelete")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                AdoClass ado = new AdoClass();
                try
                {
                    //Response.Write(GridView1.Rows[index].Cells[0].Text);
                    ado.command = new System.Data.SqlClient.SqlCommand("Delete FROM Client WHERE NumClient = @nmClient", ado.connection);
                    ado.command.Parameters.AddWithValue("@nmClient", GridView1.Rows[index].Cells[0].Text);
                    ado.Connecter();
                    ado.command.ExecuteNonQuery();
                    GridView1.DataBind();
                }
                catch (Exception ex) { Response.Write(ex.Message); }
                finally { ado.Deconnecter(); }
            }

            //Command Edit
            if (e.CommandName == "IsEdit")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Session["numClientAdmin"] = GridView1.Rows[index].Cells[0].Text;
                Response.Redirect("~/ModifierClientAdmin.aspx");

            }
        }

        protected void btnAjouterClient_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AjouterClientAdmin.aspx");
        }
    }
}