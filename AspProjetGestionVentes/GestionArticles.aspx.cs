using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProjetGestionVentes
{
    public partial class GestionArticles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtbxArticle.AutoPostBack = true;
        }

        protected void txtbxArticle_TextChanged(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM Article WHERE Designation LIKE '" + txtbxArticle.Text + "%'";

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
                    ado.command = new System.Data.SqlClient.SqlCommand("Delete FROM Article WHERE NumArticle = @nmArticle", ado.connection);
                    ado.command.Parameters.AddWithValue("@nmArticle", GridView1.Rows[index].Cells[0].Text);
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
                Session["numArticleAdmin"] = GridView1.Rows[index].Cells[0].Text;
                Response.Redirect("~/ModifierArticleAdmin.aspx");

            }
        }
    }
}