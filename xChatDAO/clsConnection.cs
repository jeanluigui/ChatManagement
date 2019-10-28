using System;
using System.Configuration;
using System.Data.SqlClient;

namespace xAPI.Library.Connection
{
    public class clsConnection
    {
        public static void DisposeCommand(SqlCommand cmd)
        {
            try
            {
                if (cmd != null)
                {
                    if (cmd.Connection != null)
                    {
                        cmd.Connection.Close();
                        cmd.Connection.Dispose();
                    }
                    cmd.Dispose();
                }
            }
            catch { } //don't blow up
        }
    

        public static SqlConnection GetConnection(String DbConnection)
        {
            SqlConnection objConexion = new SqlConnection(DbConnection);

            objConexion.Open();
            return objConexion;
        }
        
        public static SqlConnection GetConnection()
        {
            String connString = "";

            if (ConfigurationManager.ConnectionStrings["systemweb_db"] != null)
            {
                connString = ConfigurationManager.ConnectionStrings["systemweb_db"].ConnectionString;
            }

            SqlConnection objConexion = new SqlConnection(connString);

            objConexion.Open();
            return objConexion;
        }

    }
}
