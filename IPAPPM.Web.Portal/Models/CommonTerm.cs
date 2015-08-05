using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class CommonTerm
    {
        public int TermId { get; set; }
        public String Title { get; set; }
        public String Description { get; set; }
        public String TermType { get; set; }
        
        public String CreatedBy { get; set; }
        public String ModifiedBy { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime ModifiedDate { get; set; }

       
    }
}