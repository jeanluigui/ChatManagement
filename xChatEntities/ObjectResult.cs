using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace xChatEntities
{
    public class ObjectResult
    {
        public int Id { get; set; }
        public string Message { get; set; }
        public object Data { get; set; }
    }
}
