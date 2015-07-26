using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class Seller
    {
        public int Id { get; set; }
        public String Name{get;set;}
        public String Code { get; set; }
        public String Address { get; set; }
        public String PhoneNumbers { get; set; }
        public String State { get; set; }
        public String City { get; set; }

        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        public List<Seller> GetSellers(DateTime fromTime)
        {

            List<Seller> sellers;
            sellers = (from c in db.tbl_SellerDetails.ToList()
                       where c.ModifiedDate >= fromTime
                          select new Seller
                          {
                              Id= c.Seller_Id,
                              Name = c.Seller_Name,
                              Code = c.Seller_code,
                              Address = c.Address,
                              PhoneNumbers = c.PhoneNumbers,
                              City = c.tbl_City.City_Name,
                              State = c.tbl_State.State_Name
                          }).ToList();
            return sellers;
        }


    }
}