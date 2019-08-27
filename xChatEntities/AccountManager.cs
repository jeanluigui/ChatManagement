using System.Data;

namespace xChatEntities
{
    public class AccountManagerEntity
    {
        public int AccountUserId { get; set; }
        public short ModuloAppId { get; set; }
	   public string EMail { get; set; }
        public string Password { get; set; }
        public string Token { get; set; }

        public AccountManagerEntity() { }

        public AccountManagerEntity(DataRow dataRow)
        {
            if (dataRow == null) return;
        }

    }
}
