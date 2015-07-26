using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class UserQuestion
    {
        public String Question { get; set; }
        public String Answer { get; set; }
        public int UserId { get; set; }
    }
}