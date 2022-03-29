using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AspProjetGestionVentes
{
    public class AdoClass
    {
        public SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        public SqlCommand command;
        public SqlDataReader reader;

        public void Connecter()
        {
            connection.Open();
        }

        public void Deconnecter()
        {
            connection.Close();
        }
    }
}