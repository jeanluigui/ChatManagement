using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xSqlService
{
    public sealed class XirectServiceSQL
    {
        #region Patron Singleton

        private string cadenaConexion = string.Empty;

        private static readonly XirectServiceSQL servicio = new XirectServiceSQL();

        public static XirectServiceSQL Instancia
        {
            get { return servicio; }
        }

        #endregion

        #region Constructor

        /// <summary>
        /// Constructor predeterminado.
        /// </summary>
        private XirectServiceSQL()
        {
            if (string.IsNullOrEmpty(cadenaConexion))
            {

                cadenaConexion = ConfigurationManager.ConnectionStrings["DBConnection"].ToString();

                //}

                //if (string.IsNullOrEmpty(cadenaConexion))
                //{
                //    var configurationBuilder = new ConfigurationBuilder();

                //    var path = Path.Combine(Directory.GetCurrentDirectory(), "appsettings.json");

                //    configurationBuilder.AddJsonFile(path, false);

                //    var root = configurationBuilder.Build();

                //    cadenaConexion = root.GetConnectionString("DataConnection");
                //}
            }
        }

        #endregion

        #region Conexion/Transaccion

        public SqlConnection AbrirConexion()
        {
            SqlConnection osqlcon = new SqlConnection(cadenaConexion);
            osqlcon.Open();
            return osqlcon;
        }

        public SqlTransaction AbrirTransaccion(SqlConnection oconsql)
        {
            return oconsql.BeginTransaction();
        }

        #endregion

        #region Ejecutar Comando SQL Predeterminado

        /// <summary>
        /// Devuelve un objeto DataRow
        /// </summary>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        public DataRow ExecuteRegister(string entidad, string clave, Hashtable parametros = null)
        {
            DataTable dtresultado = EjecutarTabla(entidad, clave, parametros);

            if (dtresultado == null || dtresultado.Rows == null || dtresultado.Rows.Count == 0)
                return null;

            return dtresultado.Rows[0];
        }

        /// <summary>
        /// Devuelve un objeto DataTable
        /// </summary>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        public DataTable EjecutarTabla(string entidad, string clave, Hashtable parametros = null)
        {
            DataTable dtresultado = new DataTable();

            using (SqlConnection osqlcon = new SqlConnection(cadenaConexion))
            {
                osqlcon.Open();

                using (SqlCommand osqlcom = EstablecerComando(osqlcon, null, entidad, clave, parametros))
                {
                    dtresultado.Load(osqlcom.ExecuteReader());
                    RecuperarValoresParametrosSalida(osqlcom, parametros);
                }
            }

            return dtresultado;
        }

        /// <summary>
        /// Devuelve un objeto DataSet
        /// </summary>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="parametros"></param>
        /// <param name="tablas"></param>
        /// <param name=""></param>
        /// <returns></returns>
        public DataSet EjecutarDataSet(string entidad, string clave, Hashtable parametros, params string[] tablas)
        {
            DataSet dsresultado = new DataSet();

            using (SqlConnection osqlcon = new SqlConnection(cadenaConexion))
            {
                osqlcon.Open();

                using (SqlCommand osqlcom = EstablecerComando(osqlcon, null, entidad, clave, parametros))
                {
                    dsresultado.Load(osqlcom.ExecuteReader(), LoadOption.OverwriteChanges, tablas);

                    RecuperarValoresParametrosSalida(osqlcom, parametros);
                }
            }

            return dsresultado;
        }

        /// <summary>
        /// Ejecuta un comando SQL
        /// </summary>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        public int EjecutarComando(string entidad, string clave, Hashtable parametros = null)
        {
            using (SqlConnection osqlcon = new SqlConnection(cadenaConexion))
            {
                osqlcon.Open();

                using (SqlCommand osqlcom = EstablecerComando(osqlcon, null, entidad, clave, parametros))
                {
                    osqlcom.ExecuteNonQuery();

                    RecuperarValoresParametrosSalida(osqlcom, parametros);
                }
            }

            return 1;
        }

        #endregion

        #region Ejecutar Comando SQL Con Conexión Activa

        /// <summary>
        /// Devuelve un Objeto DataRow con conexión activa.
        /// </summary>
        /// <param name="osqlcon"></param>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        public DataRow ExecuteRegister(SqlConnection osqlcon, string entidad, string clave, Hashtable parametros = null)
        {
            DataTable dtresultado = EjecutarTabla(osqlcon, entidad, clave, parametros);

            if (dtresultado == null || dtresultado.Rows == null || dtresultado.Rows.Count == 0)
                return null;

            return dtresultado.Rows[0];
        }

        /// <summary>
        /// Devuelve un Objeto DataTable con conexion activa.
        /// </summary>
        /// <param name="osqlcon"></param>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        public DataTable EjecutarTabla(SqlConnection osqlcon, string entidad, string clave, Hashtable parametros = null)
        {
            DataTable dtresultado = new DataTable();

            using (SqlCommand osqlcom = EstablecerComando(osqlcon, null, entidad, clave, parametros))
            {
                dtresultado.Load(osqlcom.ExecuteReader());
            }

            return dtresultado;
        }

        /// <summary>
        /// Devuelve un Objeto DataSet con conexión activa.
        /// </summary>
        /// <param name="osqlcon"></param>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="tablas"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        public DataSet EjecutarDataSet(SqlConnection osqlcon, string entidad, string clave, Hashtable parametros, params string[] tablas)
        {
            DataSet dsresultado = new DataSet();

            using (SqlCommand osqlcom = EstablecerComando(osqlcon, null, entidad, clave, parametros))
            {
                dsresultado.Load(osqlcom.ExecuteReader(), LoadOption.OverwriteChanges, tablas);
            }

            return dsresultado;
        }

        /// <summary>
        /// Ejecuta un comando con conexión activa.
        /// </summary>
        /// <param name="osqlcon"></param>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        public int EjecutarComando(SqlConnection osqlcon, string entidad, string clave, Hashtable parametros = null)
        {
            using (SqlCommand osqlcom = EstablecerComando(osqlcon, null, entidad, clave, parametros))
            {
                return osqlcom.ExecuteNonQuery();
            }
        }

        #endregion

        #region Ejecutar Comando SQL Con Transacción Activa

        /// <summary>
        /// Devuelve un objeto DataRow con Transacción Activa.
        /// </summary>
        /// <param name="osqltran"></param>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        public DataRow ExecuteRegister(SqlTransaction osqltran, string entidad, string clave, Hashtable parametros = null)
        {
            DataTable dtresultado = EjecutarTabla(osqltran, entidad, clave, parametros);

            if (dtresultado == null || dtresultado.Rows == null || dtresultado.Rows.Count == 0)
                return null;

            return dtresultado.Rows[0];
        }

        /// <summary>
        /// Devuelve un objeto DataTable con Transacción Activa.
        /// </summary>
        /// <param name="osqltran"></param>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        public DataTable EjecutarTabla(SqlTransaction osqltran, string entidad, string clave, Hashtable parametros = null)
        {
            DataTable dtresultado = new DataTable();

            using (SqlCommand osqlcom = EstablecerComando(osqltran.Connection, osqltran, entidad, clave, parametros))
            {
                dtresultado.Load(osqlcom.ExecuteReader());
            }

            return dtresultado;
        }

        /// <summary>
        /// Devuelve un objeto DataSet con Transacción Activa.
        /// </summary>
        /// <param name="osqltran"></param>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="tablas"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        public DataSet EjecutarDataSet(SqlTransaction osqltran, string entidad, string clave, Hashtable parametros, params string[] tablas)
        {
            DataSet dsresultado = new DataSet();

            using (SqlCommand osqlcom = EstablecerComando(osqltran.Connection, osqltran, entidad, clave, parametros))
            {
                dsresultado.Load(osqlcom.ExecuteReader(), LoadOption.OverwriteChanges, tablas);
            }

            return dsresultado;
        }

        /// <summary>
        /// Ejecuta un comando SQL con Transacción Activa.
        /// </summary>
        /// <param name="osqltran"></param>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        public int EjecutarComando(SqlTransaction osqltran, string entidad, string clave, Hashtable parametros = null)
        {
            using (SqlCommand osqlcom = EstablecerComando(osqltran.Connection, osqltran, entidad, clave, parametros))
            {
                int resultado = osqlcom.ExecuteNonQuery();

                return resultado;
            }
        }

        #endregion

        #region Metodos privados

        //private SqlCommand ObtenerObjetoSQLCommand(String entidad, String clave, Hashtable parametros, SqlConnection sqlcon, SqlTransaction sqltran)
        //{
        //    SqlCommand osqlcommand = (SqlCommand)null;
        //    SqlConnection osqlconnection = sqlcon == null ? PreparaConexion() : sqlcon;
        //    String claveSP = entidad + "_" + clave + "_pa";

        //    if (_httablacomando.Contains(claveSP) == false)
        //    {
        //        // ----------------------------------------
        //        // Validar si existe el SP a ejecutar.
        //        // ----------------------------------------

        //        if (ExisteObjetoSQL(claveSP, osqlconnection, sqltran) == false)
        //            throw new Exception("No existe objeto con entidad: " + entidad + "; y clave: " + clave + " a ejecutar...!");

        //        // ----------------------------------------
        //        // Definir el Objeto SQLCOMMAND.
        //        // ----------------------------------------
        //        osqlcommand = new SqlCommand();

        //        osqlcommand.CommandText = claveSP;
        //        osqlcommand.CommandType = CommandType.StoredProcedure;
        //        osqlcommand.Connection = osqlconnection;
        //        osqlcommand.Transaction = sqltran;
        //        osqlcommand.CommandTimeout = _inttiempofuerapredeterminado;

        //        // ----------------------------------------------
        //        // Establecer los parámetros.
        //        // ----------------------------------------------

        //        Boolean existeConexion = true;
        //        WindowsImpersonationContext impersonationContext = null;

        //        if (osqlcommand.Connection.State == ConnectionState.Closed)
        //        {
        //            if (WindowsIdentity.GetCurrent(true) != null)
        //                impersonationContext = (WindowsIdentity.GetCurrent(true)).Impersonate();

        //            existeConexion = false;
        //            osqlcommand.Connection.Open();
        //        }

        //        SqlCommandBuilder.DeriveParameters(osqlcommand);

        //        if (existeConexion == false)
        //        {
        //            if (impersonationContext != null)
        //                impersonationContext.Undo();

        //            osqlcommand.Connection.Close();
        //        }

        //        // ----------------------------------------------
        //        // Agregar al Caché el Objeto SqlCommand creado.
        //        // ----------------------------------------------

        //        _httablacomando[claveSP] = osqlcommand;
        //    }

        //    osqlcommand = (SqlCommand)_httablacomando[claveSP];
        //    osqlcommand.Connection = osqlconnection;
        //    osqlcommand.Transaction = sqltran == null ? osqlcommand.Transaction : sqltran;

        //    if (osqlcommand.Parameters.Count > 0)
        //    {
        //        CargarValoresParametros(osqlcommand, parametros);
        //    }

        //    return osqlcommand;
        //}

        Hashtable _htcomandosql = new Hashtable();

        /// <summary>
        /// Establece un objeto SQLCOMMAND
        /// </summary>
        /// <param name="osqlcon"></param>
        /// <param name="osqltran"></param>
        /// <param name="entidad"></param>
        /// <param name="clave"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        private SqlCommand EstablecerComando(SqlConnection osqlcon, SqlTransaction osqltran, string entidad, string clave, Hashtable parametros)
        {
            string objetoDB = string.Concat(entidad, "_", clave, "_pa");

            SqlCommand osqlcom;

            if (_htcomandosql.ContainsKey(objetoDB))
            {
                osqlcom = _htcomandosql[objetoDB] as SqlCommand;
                osqlcom.Connection = osqlcon;
                osqlcom.Transaction = osqltran;
            }
            else
            {
                osqlcom = new SqlCommand();

                osqlcom.Connection = osqlcon;
                osqlcom.Transaction = osqltran;
                osqlcom.CommandText = $"{entidad}_{clave}_pa";
                osqlcom.CommandType = System.Data.CommandType.StoredProcedure;

                SqlCommandBuilder.DeriveParameters(osqlcom);

                _htcomandosql[objetoDB] = osqlcom;
            }

            CargarValoresParametros(osqlcom, parametros);

            return osqlcom;
        }

        /// <summary>
        /// Cargar valores a los parámetros.
        /// </summary>
        /// <param name="comando"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        private Boolean CargarValoresParametros(SqlCommand comando, Hashtable parametros)
        {
            if (parametros == null) { return false; }
            if (comando == null) { return false; }
            if (comando.Parameters.Count == 0) { return true; }

            foreach (SqlParameter param in comando.Parameters)
            {
                if (param.Direction == ParameterDirection.ReturnValue) { continue; }

                if (!parametros.Contains(param.ParameterName.ToLower()))
                {
                    if (param.IsNullable) { continue; }
                    StringBuilder _sbmensaje = new StringBuilder();
                    _sbmensaje.AppendLine("Se ha modificado el esquema de la entidad a ejecutar");
                    _sbmensaje.AppendLine("");
                    _sbmensaje.AppendLine("Objeto modificado: " + comando.CommandText);
                    _sbmensaje.AppendLine("Parametro en Caché: " + param.ParameterName.ToLower());

                    throw new Exception(_sbmensaje.ToString());
                }

                param.Value = parametros[param.ParameterName.ToLower()];
            }

            return true;

        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="comando"></param>
        /// <param name="parametros"></param>
        /// <returns></returns>
        private void RecuperarValoresParametrosSalida(SqlCommand comando, Hashtable parametros)
        {
            if (parametros == null)
            {
                return;
            }
            if (comando == null) { return; }
            if (comando.Parameters.Count == 0) { return; }

            //foreach (SqlParameter param in comando.Parameters)

            foreach (SqlParameter param in comando.Parameters)
            {
                if (param.Direction == ParameterDirection.Input) { continue; }
                if (!comando.Parameters.Contains(param.ParameterName.ToLower()))
                {
                    if (param.IsNullable) { continue; }
                    if (param.Direction != ParameterDirection.ReturnValue)
                        throw new Exception("Se ha modificado el esquema de la entidad ejecutada");
                }

                parametros[param.ParameterName.ToLower()] = param.Value;

            }

        }

        #endregion
    }

}
