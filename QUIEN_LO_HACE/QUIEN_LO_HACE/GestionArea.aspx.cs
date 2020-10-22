using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using BLL.Extension;
using DAL;

namespace QUIEN_LO_HACE
{
    public partial class GestionArea : System.Web.UI.Page
    {
        //AREAS

        //CAMPOS
        areaBLL aBLL = new areaBLL();

        //METODOS

        //CargarDatagrid Area
        private void FillGrid()
        {
            dgArea.DataSource = aBLL.GetName();
            dgArea.DataBind();
        }

        //Buscar y cargar Areas
        private void FillText(area ob = null, bool initial = false)
        {
            if (ob != null)
            {
                txtId.Text = ob.id.ToString();
                txtNombre.Text = ob.nombre;
                txtDescripcion.Text = ob.descripcion; ;
            }
            else
            {
                txtId.Text = "";
                txtNombre.Text = "";
                txtDescripcion.Text = "";
                if (initial)
                    txtId.Text = "";
            }
        }

        //EVENTOS

        //Cargar Pagina
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGrid();
            }
        }

        //Botón Buscar
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtId.Text.Trim() != "")
                {
                    area obj = new area();
                    obj = aBLL.GetById(Convert.ToInt32(txtId.Text));
                    FillText(obj);
                }
                else
                {
                    FillText();
                }
            }
            catch (Exception ex)
            {
                msgBox.InnerText = "Error: " + ex.Message;
            }
        }

        //Boton Guardar
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                area obj = new area();
                obj.nombre = txtNombre.Text;
                obj.descripcion = txtDescripcion.Text;
                if (txtId.Text.Trim() != "")
                    obj.id = Convert.ToInt32(txtId.Text);
                aBLL.Save(obj);
                FillGrid();
                msgBox.InnerText = "";
                FillText(null, true);
            }
            catch (Exception ex)
            {
                msgBox.InnerText = "Error: " + ex.Message;
            }
        }

        //Boton Eliminar
        protected void btnElimminar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtId.Text.Trim() != "")
                {
                    aBLL.Delete(Convert.ToInt32(txtId.Text));
                    FillGrid();
                    msgBox.InnerText = "";
                    FillText(null, true);
                }
            }
            catch (Exception ex)
            {
                msgBox.InnerText = "Error: " + ex.Message;
            }
        }

        protected void dgArea_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            if (e.NewSelectedIndex > -1)
            {
                area ob = aBLL.GetById(Convert.ToInt32(dgArea.DataKeys[e.NewSelectedIndex].Value));
                FillText(ob);
            }
        }

        protected void dgArea_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                dgArea.PageIndex = e.NewPageIndex;
                FillGrid();
            }
            catch (Exception ex)
            {
                msgBox.InnerText = "Error: " + ex.Message;
            }
        }

    }
}