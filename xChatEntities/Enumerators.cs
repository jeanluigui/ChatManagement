using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public enum CustomExceptionEnum
    {
        TimeOutException = 99,
        NotControllerException = 100,
    }

    public enum EntityMasterEnum
    {
        Market,
        Language,
        Module,
        UserAgent,
        Perspective,
        UsersChat,
        RoleType,
        UserManager,
    }
}
