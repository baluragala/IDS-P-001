using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using IPAPPM.Web.Api.Models;

namespace IPAPPM.Web.Api.Controllers
{
    public class IPAPPMController : ApiController
    {
        public List<CompanyType> GetCompanyTypes(DateTime fromTime)
        {
            return new CompanyType().GetCompanyTypes();
        }

        public List<ProductCategory> GetCategories(DateTime fromTime)
        {
            return new ProductCategory().GetCategories(fromTime);
        }

        public List<Seller> GetSellers(DateTime fromTime)
        {
            return new Seller().GetSellers(fromTime);
        }

        public List<Product> GetProducts(DateTime fromTime)
        {
            return new Product().GetProducts(fromTime);
        }

        //public List<Product> GetFavoriteProducts(String userId)
        //{
        //    return new Product().GetFavoriteProductsByUser(userId);
        //}
       

        public CompanyInfo GetCompanyInfo(DateTime fromTime)
        {
            return new CompanyInfo().GetCompanyInfo(fromTime);
        }

        public List<Notification> GetNotifications(int userId)
        {
            return new Notification().GetUserNotifications(userId);
        }


        public void MarkNotificatoinAsRead(int notificationId, int userId)
        {
            new Notification().MarkNotificatoinAsRead(notificationId, userId);
        }

        public UserDetails GetUserDetails(String mobileNumber)
        {
            return new UserDetails().GetUser(mobileNumber);
        }

        public List<UserQuestion> GetUserQuestions(DateTime fromTime)
        {
            return new UserQuestion().GeUserQuestions(fromTime);
        }

        [HttpPost]
        public void Register(UserDetails userDetails)
        {
            new UserDetails().Register(userDetails);
        }

        //[HttpPost]
        //public void SetFavoriteProduct(FavoriteProduct favoriteProduct)
        //{
        //    new FavoriteProduct().SetFavouriteProduct(favoriteProduct);
        //}

        [HttpPost]
        public void SaveQuestion(UserQuestion userQuestion)
        {
            new UserQuestion().SaveQuestion(userQuestion);
        }


    }
}
