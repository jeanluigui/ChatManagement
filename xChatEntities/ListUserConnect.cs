using System.Collections.Generic;
using System.Data;

namespace xChatEntities
{
    public class ListUserConnect
    {
        public List<UserConnect> Elementos { get; set; }

        public ListUserConnect() { }

        public ListUserConnect(DataTable dtable)
        {
            if (dtable == null || dtable.Rows == null || dtable.Rows.Count == 0)
                return;

            Elementos = new List<UserConnect>();

            foreach(DataRow item in dtable.Rows)
            {
                UserConnect entidad = new UserConnect();
                entidad.Fill(item);
                Elementos.Add(entidad);
            }
        }
    }
}
