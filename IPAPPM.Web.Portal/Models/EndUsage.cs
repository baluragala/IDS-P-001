using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class EndUsage
    {
        public int Id { get; set; }
        public String ProductEndUsage { get; set; }
        public String SubEndUsage { get; set; }
        public String Product { get; set; }
        public String GSMRange { get; set; }
        public String Availability { get; set; }
        public String CreatedBy { get; set; }
        public String ModifiedBy { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime ModifiedDate { get; set; }

    }
}