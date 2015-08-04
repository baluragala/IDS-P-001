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
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        public List<EndUsage> GetEndUsages(DateTime fromTime)
        {
            List<EndUsage> endUsages;
            endUsages = (from c in db.tbl_EndUsage
                             where c.CreatedDate >= fromTime
                             select new EndUsage
                             {
                                Id = c.EndUsage_Id,
                                ProductEndUsage = c.EndUsage,
                                SubEndUsage = c.SubEndUsage,
                                Product =c.Product,
                                GSMRange = c.GSMRange,
                                Availability = c.Availability
                             }).ToList();

            return endUsages;

        }

    }
}