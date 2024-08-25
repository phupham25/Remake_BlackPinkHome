﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace BlackPinkHome
{
    public partial class Register : System.Web.UI.Page
    {
        List<objects.user> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            listUser = (List<objects.user>)Application["listUser"];
        }

        protected void btnRegister_onClick(object sender, EventArgs e)
        {
            string firstName = Request.Form["firstName"].Trim();
            string lastName = Request.Form["lastName"].Trim();
            string phone = Request.Form["phone"].Trim();
            string email = Request.Form["email"].Trim().ToLower();
            string password = Request.Form["pass"].Trim();
            
            bool check = true;

          
            foreach (objects.user user in listUser)
            {
                if(user.phone == phone)
                {
                    check = false;
                    error.InnerHtml = "ERROR: Phone number existed!";
                    break;
                }
                else
                {
                    if (user.email == email)
                    {
                        check = false;
                        error.InnerHtml = "ERROR: Email existed!";
                        break;
                    }
                    else
                    {
                        error.InnerHtml = "";
                    }
                }

                
            }

            if(check)
            {
                objects.user newUser = new objects.user(firstName, lastName, phone, email, password);
                listUser.Add(newUser);
                Application["listUser"] = listUser;
                Response.Redirect("signin.aspx");
            }

        }
    }
}