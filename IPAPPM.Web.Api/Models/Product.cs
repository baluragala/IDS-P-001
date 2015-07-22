using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class Product
    {
        public String Name;
        public String Description;
        public String ImagePath;
        public String Benefits;
        public String Specifications;
        public String EndUses;
        public String Features;
        public String Category;

        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        public List<Product> GetByCategory(String category)
        {
            List<Product> products;
            products = (from c in db.tbl_ProductDetails.ToList()
                        where c.tbl_ProductCategory.Category_Name == category
                          select new Product
                          {
                              Name = c.Product_Name,
                              Description = c.Description,
                              ImagePath = c.ImagePath,
                              Benefits = c.Benefits,
                              Features = c.Features,
                              Specifications = c.Specifications,
                              Category = c.tbl_ProductCategory.Category_Name,
                              EndUses = c.EndUses
                          }).ToList();
            return products;

        }
    }
}