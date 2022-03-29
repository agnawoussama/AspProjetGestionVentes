using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProjetGestionVentes
{
    public partial class InfoClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            else
            {
                AdoClass ado = new AdoClass();
                try
                {
                    ado.command = new System.Data.SqlClient.SqlCommand("SELECT * FROM Client WHERE loginn = @login", ado.connection);
                    ado.command.Parameters.AddWithValue("@login", Session["login"].ToString());
                    ado.Connecter();
                    ado.reader = ado.command.ExecuteReader();
                    if (ado.reader.HasRows)
                    {
                        ado.reader.Read();
                        lblNumClient.Text = ado.reader[0].ToString();
                        lblNom.Text = ado.reader[1].ToString();
                        lblPre.Text = ado.reader[2].ToString();
                        lblAdresse.Text = ado.reader[3].ToString();
                        lblVille.Text = ado.reader[4].ToString();
                        lblTel.Text = ado.reader[5].ToString();
                        Session["numClient"] = ado.reader[0].ToString();
                    }
                    
                }
                catch (Exception ex) { Response.Write(ex.Message); }
                finally { ado.Deconnecter(); }
            }
        }

        protected void btnArticles_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListeArticles.aspx");
        }

        protected void btnCommandes_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CommandeClient.aspx");

        }
        
        protected void btnModifier_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ModifierClient.aspx");
        }

        
    }
}