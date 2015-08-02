using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using IPAPPM.Web.Portal.Helpers;

namespace IPAPPM.Logins
{
    public partial class CaptchaImage : System.Web.UI.Page
    {
        RandomImage _Obj_RandomImage = new RandomImage();
        protected void Page_Load(object sender, EventArgs e)
        {
            // Create a random code and store it in the Session object.
            this.Session["CaptchaImageText"] = _Obj_RandomImage.GenerateRandomCode();
            // Create a CAPTCHA image using the text stored in the Session object.
            RandomImage ci = new RandomImage(this.Session["CaptchaImageText"].ToString(), 300, 75);

            // RandomImage ci = new RandomImage();
            // Change the response headers to output a JPEG image.
            this.Response.Clear();
            this.Response.ContentType = "image/jpeg";
            // Write the image to the response stream in JPEG format.
            ci.Image.Save(this.Response.OutputStream, ImageFormat.Jpeg);
            //  Dispose of the CAPTCHA image object.
            ci.Dispose();

        }
    }
}