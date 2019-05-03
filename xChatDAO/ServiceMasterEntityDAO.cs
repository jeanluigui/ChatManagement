using System.Collections.Generic;
using System.Data;
using xChatEntities;
using xss.ConnectionManager;

namespace xChatDAO
{
    public class ServiceMasterEntityDAO : IServiceMasterEntityDAO
    {
        public ServiceMasterEntityDAO() { }

        public ObjectResultList<EntityMaster> GetList(EntityMasterEnum entityMasterEnum)
        {
            ObjectResultList<EntityMaster> listReturn = new ObjectResultList<EntityMaster>();

            ListParameters parameters = new ListParameters();

            string procedure = $"chat.{entityMasterEnum.ToString()}_GetListMaster_pa";

            CommandParameter queryCommand = new CommandParameter(procedure, parameters);

            DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

            listReturn = new ObjectResultList<EntityMaster>(dtresult);

            return listReturn;
        }
    }
}
