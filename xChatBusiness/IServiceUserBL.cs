using System;
using xChatEntities;

namespace xChatBusiness
{
    public interface IServiceUserBL
    {
        void CreateUsersRoleType(ObjectRequest<UserRoleType> objectRequest);
        void UpdateUsersRoleType(ObjectRequest<UserRoleType> objectRequest);
        void DeleteUsersRoleType(ObjectRequest<UserRoleType> objectRequest);
        ObjectResultList<UserRoleType> GetListUsersRoleType(ObjectRequest<UserRoleType> objectRequest);
        ObjectResult<Boolean> ValidateUsersRoleType(ObjectRequest<UserRoleType> objectRequest);
    }
}
