using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlackPinkHome
{
    public partial class AddToCart : System.Web.UI.Page
    {
        List<objects.user> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["userName"] != null)
            {
                string phone = (string)Session["phone"];

                List<objects.productOfUser> cart = (List<objects.productOfUser>)Application["listProductOfUser"];

                List<objects.productStore> listProduct = (List<objects.productStore>)Application["listProductStore"];


                foreach (objects.productStore product in listProduct)
                {
                    if (Request.QueryString["id"] == product.id)
                    {
                        cart.Add(new objects.productOfUser(cart.Count + DateTime.Now.ToString(), product, phone));
                        break;
                    }

                }

                Application["listProductOfUser"] = cart;
                Response.Redirect("Cart.aspx");
            }
            else
            {
                Response.Redirect("signin.aspx");
            }
        }
    }
}