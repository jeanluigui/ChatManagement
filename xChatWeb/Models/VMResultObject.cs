using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace xChatWeb.Models
{
    public class VMResultObject<Object> : VMBaseEntity
    {
        public Object Data { get; set; }
    }
}