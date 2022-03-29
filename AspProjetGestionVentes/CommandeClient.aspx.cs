using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProjetGestionVentes
{
    public partial class CommandeClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["numClient"] == null)
                {
                    Response.Redirect("~/login.aspx");
                }
                else
                {
                    AdoClass ado = new AdoClass();
                    try
                    {
                        ado.command = new System.Data.SqlClient.SqlCommand("SELECT NumCmd,dateCmd,NumArticle,QteArticle FROM COMMANDE WHERE NumClient = @numclient", ado.connection);
                        ado.command.Parameters.AddWithValue("@numclient", Session["numClient"].ToString());
                        ado.Connecter();
                        ado.reader = ado.command.ExecuteReader();
                        if (ado.reader.HasRows)
                        {
                            GridView1.DataSource = ado.reader;
                            GridView1.DataBind();
                        }
                    }
                    catch (Exception ex) { Response.Write(ex.ToString()); }
                    finally { ado.Deconnecter(); }
                }
            }
        }

        protected void btnArticles_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListeArticles.aspx");
        }

        protected void btnInfoClient_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/InfoClient.aspx");

        }
    }
}