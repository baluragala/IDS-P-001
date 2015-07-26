﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using IPAPPM.Web.Api.Models;

namespace IPAPPM.Web.Api.Controllers
{
    public class CompanyController : ApiController
    {
        public List<CompanyType> GetCompanyTypes()
        {
            return new CompanyType().GetCompanyTypes();
        }
    }
}