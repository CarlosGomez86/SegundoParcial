using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;

namespace SegundoParcial
{
    public partial class GestionDeArchivos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        public void completarGrid()
        {
            string ruta = $"{Server.MapPath(".")}/{this.Session["usuario"].ToString()}";
            if (Directory.Exists(ruta))
            {
                string[] files=Directory.GetFiles(ruta);
                List<Archivo> list = new List<Archivo>();

                foreach(string file in files)
                {
                    var fileNew = new Archivo(Path.GetFileName(file), file);
                    list.Add(fileNew);
                }
                GridView1.DataSource= list;
                GridView1.DataBind();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (Session["usuario"] != null)
                {

                    string ruta = $"{Server.MapPath(".")}/{this.Session["usuario"].ToString()}";



                    if (!Directory.Exists(ruta))
                    {

                        Directory.CreateDirectory(ruta);
                    }

                    foreach (HttpPostedFile arc in FileUpload1.PostedFiles)
                    {
                        FileUpload1.SaveAs($"{ruta}/{arc.FileName}");
                    }
                    

                    completarGrid();
                }
                else
                {
                    
                    Label2.Text = "Debe Registrar sus datos para poder continuar!";


                }

            }
            else
            {
                Label2.Text = "No hay archivos cargados";
            }
            


        }

        

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Descargar")
            {
                GridViewRow registro = GridView1.Rows[(Convert.ToInt32(e.CommandArgument))];
                string filePath = registro.Cells[2].Text;

                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment;filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }


        }
    }
}