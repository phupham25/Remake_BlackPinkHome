using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlackPinkHome
{
    public partial class detailProduct : System.Web.UI.Page
    {
        List<objects.user> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["userName"] != null)
            {
                var str =
                    "<a>"
                        + "<span>" + (string)Session["userName"] + "</span>"
                        + "<a href = 'signout.aspx' ><i class='fa-solid fa-arrow-right-from-bracket' style='font-size: 1.5rem;'></i></a>"
                    + "</a>";
                log.InnerHtml = str;
            }
            else
            {
                var str =
                    "<a href = 'signin.aspx' >"
                        + "<span>Sign in</span>"
                    + "<a href = '' ><i class='fa-solid fa-caret-down'></i></a>"
                    + "</a>";
                log.InnerHtml = str;
            }


            List<objects.productStore> listProduct = (List<objects.productStore>)Application["listProductStore"];
            string img = "";
            string name = "";
            string price = "";
            string linkToCart = "";
            
            foreach(objects.productStore product in listProduct)
            {
                if (Request.QueryString["IdProduct"] == product.id)
                {
                    img += "<img src='" + product.image + "'>";
                    name += "<span>" + product.name + "</span>";
                    price += "<span>$" + product.price + ".00</span>";
                    linkToCart +=
                        "<span><a href = 'AddToCart.aspx?id=" + product.id + "' style = 'color: #333; padding: 8px 12px; display: block;'> ADD TO CART</a></span>";
                    break;
                }

            }
            if(img != "") 
            {
                imageBox.InnerHtml = img;
                nameBox.InnerHtml = name;
                priceBox.InnerHtml = price;
                addToCart.InnerHtml = linkToCart;
            }



        }
    }
}