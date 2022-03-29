using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProjetGestionVentes
{
    public partial class ConsultationCommandes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtbxNumCom.AutoPostBack = true;
            txtbxDate.AutoPostBack = true;
            txtbxDate1.AutoPostBack = true; 
            txtbxDate2.AutoPostBack = true;
            txtbxNumClient.AutoPostBack = true;
        }

        protected void txtbxNumCom_TextChanged(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM Commande WHERE NumCmd LIKE '" + txtbxNumCom.Text + "%'";
        }

        protected void txtbxDate_TextChanged(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM Commande WHERE dateCmd LIKE '" + txtbxDate.Text + "%'";

        }

        protected void txtbxDate1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtbxDate2_TextChanged(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM Commande WHERE dateCmd BETWEEN '" + txtbxDate1.Text + "' AND '"+ txtbxDate2.Text+ "'";
        }

        protected void txtbxNumClient_TextChanged(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM Commande WHERE NumClient = " + txtbxNumClient.Text;


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}