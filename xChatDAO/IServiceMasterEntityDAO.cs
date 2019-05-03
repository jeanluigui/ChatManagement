using System.Collections.Generic;
using xChatEntities;

namespace xChatDAO
{
    public interface IServiceMasterEntityDAO
    {
        ObjectResultList<EntityMaster> GetList(EntityMasterEnum entityMasterEnum);
    }
}