using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using xChatEntities;
using xChatUtilities;

namespace xChatWeb.Models
{
    /// <summary>
    /// Clase contenedora que registra la lista de entidades maestras.
    /// </summary>
    public class MasterContainer
    {
        private static Dictionary<string, List<EntityMaster>> _list = new Dictionary<string, List<EntityMaster>>();

        public static List<EntityMaster> GetList(EntityMasterEnum entityMasterEnum)
        {
            string clave = entityMasterEnum.ToString();

            if (_list == null || !_list.ContainsKey(clave))
            {
                _list[clave] = GetListService(entityMasterEnum);
            }

            return _list[clave];
        }

        private static List<EntityMaster> GetListService(EntityMasterEnum entityMasterEnum)
        {
            ObjectResultList<EntityMaster> listEntityMaster = new ObjectResultList<EntityMaster>();

            ObjectRequest<EntityMasterEnum> objectRequest = new ObjectRequest<EntityMasterEnum>() { SenderObject = entityMasterEnum };
            listEntityMaster = RequestService.ExecuteList<EntityMaster, EntityMasterEnum>(Constants.UrlApiService.GetListEntityMaster, "POST", objectRequest);

            return listEntityMaster.Elements;
        }
    }
}