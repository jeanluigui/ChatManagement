using System;
using System.Collections.Generic;
using Microsoft.SqlServer.Server;
using System.Data;

namespace xChatEntities
{
    public class clsTypeList
    {
        [Serializable]
        public class srProductFilters
        {
            public Int32 Id { get; set; }
        }

        [Serializable]
        public class tBaseProducFiltersList : List<srProductFilters>, IEnumerable<SqlDataRecord>
        {
            IEnumerator<SqlDataRecord> IEnumerable<SqlDataRecord>.GetEnumerator()
            {
                SqlDataRecord ret = new SqlDataRecord(
                    new SqlMetaData("ID", SqlDbType.Int)
                    );
                foreach (srProductFilters data in this)
                {
                    ret.SetInt32(0, data.Id);
                    yield return ret;
                }
            }
        }
    }
}
