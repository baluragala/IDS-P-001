using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace IPAPPM.Web.Portal.Models
{
    public class ProductCategory
    {
        public int Id { get; set; }
        
        [Required(ErrorMessage="required")]
        [StringLength(50, ErrorMessage = "Length cannot be more then 50 characters")]
        public String Name { get; set; }

        [Required(ErrorMessage = "required")]
        [StringLength(100,ErrorMessage="Length cannot be more then 100 characters")]
        public String Description { get; set; }
        public String ImagePath { get; set; }
        public String CreatedBy { get; set; }
        public String ModifiedBy { get; set; }
        public bool? IsActive { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime? ModifiedDate { get; set; }
    }
}