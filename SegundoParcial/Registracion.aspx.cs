using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SegundoParcial
{
    public partial class Registracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.IsValid)
            {
                if (this.RangeValidator1.IsValid)
                {
                    HttpCookie cookie = new HttpCookie("pasword", this.TextBox4.Text);
                    
                    this.Response.Cookies.Add(cookie);

                    this.Session["usuario"]=this.TextBox2.Text;
                    if(cookie!=null && Session["usuario"] != null)
                    {
                        this.Label6.Text = "Los datos fueron registrados con exito!.";
                        this.TextBox1.Text = "";
                        this.TextBox2.Text = "";
                        this.TextBox3.Text = "";
                        this.TextBox4.Text = "";
                        this.TextBox5.Text = "";
                    }
                }
            }
        }
    }
}