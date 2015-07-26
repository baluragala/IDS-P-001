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
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        public List<CommonTerm> GetCommonTerms(int termType, DateTime fromTime)
        {
            List<CommonTerm> commonTerms;
            commonTerms = (from c in db.tbl_CommonTerms.ToList()
                           where c.ModifiedDate >= fromTime
                           && c.TermType == termType
                           select new CommonTerm
                           {
                               TermId = c.CtTerms_Id,
                               Title = c.Title,
                               Description = c.Description
                           }).ToList();

            return commonTerms;

        }
    }
}