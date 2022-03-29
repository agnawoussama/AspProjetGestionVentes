using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProjetGestionVentes
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            AdoClass ado = new AdoClass();
            try
            {
                //On cherche dans la table Client si le login et le mot de passe existe
                ado.command = new System.Data.SqlClient.SqlCommand("SELECT COUNT(*) FROM Client WHERE loginn = @login AND Pass = @pass", ado.connection);
                ado.command.Parameters.AddWithValue("@login", txtbxLogin.Text);
                ado.command.Parameters.AddWithValue("@pass", txtbxPass.Text);
                ado.Connecter();
                int count = (int)ado.command.ExecuteScalar();
                //Si l'admin est connecte
                if (count == 1 && txtbxLogin.Text == "admin" && txtbxPass.Text == "admin")
                {
                    Session["login"] = txtbxLogin.Text;
                    Response.Redirect("~/admin.aspx");
                }
                //Si on trouve le login et le mot de passe sont corrects =>
                if (count == 1)
                {
                    Session["login"] = txtbxLogin.Text;
                    Response.Redirect("~/InfoClient.aspx");
                  
                }
                else //Sinon on affiche un message d'erreur =>             
                    alertLoginMdp.Attributes.CssStyle.Add("display", "block");              
            }
            catch (Exception ex) { Response.Write(ex.Message); }
            finally { ado.Deconnecter(); }
        }


        protected void btnInscript_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Inscription.aspx");
        }
    }
}