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

        public CompanyInfo GetCompanyInfo(DateTime fromTime)
        {
            return new CompanyInfo().GetCompanyInfo(fromTime);
        }

        public List<Notification> GetNotifications(DateTime fromTime)
        {
            return new Notification().GetUserNotifications(fromTime);
        }

        public UserDetails GetUserDetails(String mobileNumber)
        {
            return new UserDetails().GetUser(mobileNumber);
        }

        public List<UserQuestion> GetUserQuestions(DateTime fromTime)
        {
            return new UserQuestion().GeUserQuestions(fromTime);
        }

        public List<EndUsage> GetEndUsages(DateTime fromTime)
        {
            return new EndUsage().GetEndUsages(fromTime);
        }

        public List<CommonTerm> GetCommonTerms(int termType,DateTime fromTime)
        {
            return new CommonTerm().GetCommonTerms(termType,fromTime);
        }

       
        [HttpPost]
        public void Register(UserDetails userDetails)
        {
            new UserDetails().Register(userDetails);
        }

     

        [HttpPost]
        public void SaveQuestion(UserQuestion userQuestion)
        {
            new UserQuestion().SaveQuestion(userQuestion);
        }


    }
}
