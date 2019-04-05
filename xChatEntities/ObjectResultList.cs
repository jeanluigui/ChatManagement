using System.Collections.Generic;
using System.Data;

namespace xChatEntities
{
    public class ObjectResultList<TEntity> 
        where TEntity : EntityBaseClass, new()
    {
        public int Id { get; set; }
        public string Message { get; set; }

        public List<TEntity> Elements { get; set; }

        public ObjectResultList()
        {
            Id = 0;
            Message = "sucess.";
        }

        public ObjectResultList(DataTable dataTable)
        {
            Id = 0;
            Message = "sucess.";

            if (UtilEntity.DataTableValidate(dataTable))
            {
                Elements = new List<TEntity>();

                foreach (DataRow dataRow in dataTable.Rows)
                {
                    TEntity entidad = new TEntity();

                    entidad.Fill(dataRow);

                    Elements.Add(entidad);
                }
            }
        }
    }
}

