using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProjetGestionVentes
{
    public partial class CommanderArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["login"] == null)
            //{
            //    Response.Redirect("~/login.aspx");
            //}
            //else
            //{
                AdoClass ado = new AdoClass();
                try
                {
                    ado.command = new System.Data.SqlClient.SqlCommand("SELECT * FROM Article", ado.connection);
                    ado.Connecter();
                    ado.reader = ado.command.ExecuteReader();
                    if (ado.reader.HasRows)
                    {
                        ado.reader.Read();
                        ddlDesg.DataSource = ado.reader;
                        ddlDesg.DataTextField = "Designation";
                        ddlDesg.DataValueField = "NumArticle";
                        Session["nomArticle"] = ado.reader[1].ToString();
                        Session["pu"] = ado.reader[2].ToString();
                        ddlDesg.DataBind();
                    }
            }
                catch (Exception ex) { Response.Write(ex.Message); }
                finally { ado.Deconnecter(); }
            //}
        }

        protected void btnPasserCommande_Click(object sender, EventArgs e)
        {
            //AdoClass ado = new AdoClass();
            //try
            //{
            //    ado.Connecter();
            //    ado.command = new System.Data.SqlClient.SqlCommand("SELECT IDENT_CURRENT('Commande')");
            //    int numCmd = (int)ado.command.ExecuteScalar();
            //    ViewState["numCmd"] = numCmd;
            //}
            //catch (Exception ex) { Response.Write(ex.Message); }
            //finally { ado.Deconnecter(); }

            Session["numArticle"] = ddlDesg.SelectedValue;         
            Session["quantite"] = txtbxQuant.Text;
            Response.Redirect("~/ConfirmationCommande.aspx");
        }
    }
}