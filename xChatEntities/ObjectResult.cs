using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    /// <summary>
    /// Objeto que devuelve el resultado de una operación.
    /// </summary>
    public class ObjectResult<T>
    {
        public int Id { get; set; }
        public string Message { get; set; }
        public T Data { get; set; }

        public ObjectResult()
        {
            Id = 0;
            Message = "sucess.";
        }
    }
}
