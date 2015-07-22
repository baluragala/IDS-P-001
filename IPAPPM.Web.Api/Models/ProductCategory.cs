using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class ProductCategory
    {
        public String Name;
        public String Description;
        public String ImagePath;
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        public List<ProductCategory> GetCategories()
        {
           List<ProductCategory> categories;
           categories = (from c in db.tbl_ProductCategory.ToList()
                         select new ProductCategory
                         {
                             Name = c.Category_Name,
                             Description = c.Description,
                             ImagePath = c.ImagePath
                         }).ToList();
           return categories;
            
        }
    }
}