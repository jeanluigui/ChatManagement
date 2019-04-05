using System.Data;

namespace xChatEntities
{
    public abstract class EntityBaseClass
    {
        public EntityBaseClass() { }

        public EntityBaseClass(DataRow dataRow) { }

        abstract public void Fill(DataRow dataRow);

        public bool DataTableValidate(DataTable dataTable)
        {
            return !(dataTable == null || dataTable.Rows == null || dataTable.Rows.Count == 0);
        }

        public bool DataRowValidate(DataRow dataRow)
        {
            return !(dataRow == null);
        }

    }
}
