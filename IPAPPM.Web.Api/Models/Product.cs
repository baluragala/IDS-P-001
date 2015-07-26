using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class Product
    {
        public int ProductId;
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
                              ProductId = c.Product_Id,
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

        public List<Product> GetProducts(DateTime fromTime)
        {
            List<Product> products;
            products = (from c in db.tbl_ProductDetails.ToList()
                        where c.ModifiedDate >= fromTime
                        select new Product
                        {
                            ProductId = c.Product_Id,
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

        public List<Product> GetFavoriteProductsByUser(String userId)
        {
            List<Product> favoriteProducts;
            favoriteProducts = (from d in db.tbl_FavoriteProduct
                                join c in db.tbl_ProductDetails
                                on d.Product_Id equals c.Product_Id
                                //where d.ModifiedDate >= fromTime
                                select new Product
                                {
                                    ProductId = c.Product_Id,
                                    Name = c.Product_Name,
                                    Description = c.Description,
                                    ImagePath = c.ImagePath,
                                    Benefits = c.Benefits,
                                    Features = c.Features,
                                    Specifications = c.Specifications,
                                    Category = c.tbl_ProductCategory.Category_Name,
                                    EndUses = c.EndUses
                                }).ToList();
            return favoriteProducts;
        }
    }
}