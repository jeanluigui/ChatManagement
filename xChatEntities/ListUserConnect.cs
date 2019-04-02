using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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

            foreach (DataRow registro in dtable.Rows)
                Elementos.Add(new UserConnect(registro));
        }
    }
}
