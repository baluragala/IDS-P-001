using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class UserDetails
    {
        public int UserId { get; set; }
        public String Name { get; set; }
        public String CompanyName { get; set; }
        public String Designation { get; set; }
        public String Email { get; set; }
        public String MobileNumber { get; set; }
        public String City { get; set; }
        public String CompanyType { get; set; }
        public String Password { get; set; }

        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();
        public UserDetails GetUser(String mobileNumber)
        {
            UserDetails userDetails;
            userDetails = (from c in db.tbl_UserDetails
                           join d in db.tbl_CompanyType
                           on c.CompanyType_Id equals d.CompanyType_Id
                           where c.MobileNumber == mobileNumber
                           select new UserDetails
                           {
                               UserId = c.UserId,
                               Name = c.Name,
                               CompanyName = c.ComanyName,
                               Designation = c.Designation,
                               Email = c.Email,
                               MobileNumber = c.MobileNumber,
                               City = c.City,
                               CompanyType = d.Company_Type
                           }).SingleOrDefault();
            return userDetails;

        }

        public void Register(UserDetails userDetails)
        {
            tbl_UserDetails entity = new tbl_UserDetails
            {
                Name = userDetails.Name,
                MobileNumber = userDetails.MobileNumber,
                ComanyName = userDetails.CompanyName,
                CompanyType_Id = Convert.ToInt32(userDetails.CompanyType),
                Designation = userDetails.Designation,
                Email = userDetails.Email,
                City = userDetails.City,
                UserName=String.Empty,
                Password=String.Empty,
                Registered_Date=DateTime.Now,
                RoleId=3
            };

            db.tbl_UserDetails.AddObject(entity);
            db.SaveChanges();

            //otp generation logic
        }
    }
}