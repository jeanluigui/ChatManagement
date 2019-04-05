using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace xChatWeb.Models
{
    public class VMBaseEntity
    {
        public Int32 CodResult { get; set; }
        public String Msg { get; set; }
        public String MsgError { get; set; }
    }
}