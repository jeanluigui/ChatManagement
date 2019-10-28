using System.Collections.Generic;
using System.Data;
using System.Linq;
using xChatEntities;
//using xss.ConnectionManager;

namespace xChatDAO
{
    public class ServiceMasterEntityDAO : IServiceMasterEntityDAO
    {
        public ServiceMasterEntityDAO() { }

        //public ObjectResultList<EntityMaster> GetList(EntityMasterEnum entityMasterEnum)
        //{
        //    ObjectResultList<EntityMaster> listReturn = new ObjectResultList<EntityMaster>();

        //    ListParameters parameters = new ListParameters();

        //    string procedure = $"chat.{entityMasterEnum.ToString()}_GetListMaster_sp";

        //    CommandParameter queryCommand = new CommandParameter(procedure, parameters);

        //    DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

        //    listReturn = new ObjectResultList<EntityMaster>(dtresult);

        //    return listReturn;
        //}

        //public ObjectResultList<EntityMaster> SearchMasterGetList(string masterEntity, string masterAction, string masterParametersSet, string masterParametersAdd)
        //{
        //    ObjectResultList<EntityMaster> listReturn = new ObjectResultList<EntityMaster>();

        //    ListParameters parameters = new ListParameters();

        //    // ------------------------------------------------
        //    // Establecer parámetros de Filtro según SET.
        //    // ------------------------------------------------
        //    if (!string.IsNullOrEmpty(masterParametersSet))
        //    {
        //        // Obtener lista de pares clave:valor
        //        List<string> listaClaveValor = masterParametersSet.Split(';').ToList();

        //        // Recorrer lista de pares clave:valor
        //        foreach (string elemento in listaClaveValor)
        //        {
        //            parameters.Add("@p_" + elemento.Split(':')[0].ToString(), elemento.Split(':')[1].ToString());
        //        }

        //    }

        //    // ------------------------------------------------
        //    // Establecer parámetros de Filtro según ADD.
        //    // ------------------------------------------------
        //    if (!string.IsNullOrEmpty(masterParametersAdd))
        //    {
        //        // Obtener lista de pares clave:valor
        //        List<string> listaClaveValor = masterParametersAdd.Split(';').ToList();

        //        // Recorrer lista de pares clave:valor
        //        foreach (string elemento in listaClaveValor)
        //        {
        //            parameters.Add("@p_" + elemento.Split(':')[0].ToString(), elemento.Split(':')[1].ToString());
        //        }

        //    }

        //    string procedure = $"chat.SearchMaster{masterEntity}_{masterAction}_sp";

        //    CommandParameter queryCommand = new CommandParameter(procedure, parameters);

        //    DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

        //    listReturn = new ObjectResultList<EntityMaster>(dtresult);

        //    return listReturn;
        //}
    }
}
