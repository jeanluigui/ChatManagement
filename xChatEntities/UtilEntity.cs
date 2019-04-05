using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class UtilEntity
    {
        public static bool DataTableValidate(DataTable dataTable)
        {
            return !(dataTable == null || dataTable.Rows == null || dataTable.Rows.Count == 0);
        }

        public static bool DataRowValidate(DataRow dataRow)
        {
            return !(dataRow==null);
        }

        //public static void FillEntity<T>(T entity, DataRow dataRow) where T: new()
        //{
        //    entity = new T(dataRow);
        //}
    }
}
