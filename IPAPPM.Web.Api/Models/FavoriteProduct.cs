using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class FavoriteProduct
    {
        public int UserId { get; set; }
        public int ProductId { get; set; }

        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();
        public void SetFavouriteProduct(FavoriteProduct favoriteProduct)
        {
            tbl_FavoriteProduct entity = new tbl_FavoriteProduct
            {
                UserId = favoriteProduct.UserId,
                Product_Id = favoriteProduct.ProductId                
            };

            db.tbl_FavoriteProduct.AddObject(entity);
            db.SaveChanges();
        }

        

      

    }
}