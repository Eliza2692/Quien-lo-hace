using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using BLL.Extension;

namespace   QUIEN_LO_HACE
{
    public partial class GestionRol : System.Web.UI.Page
    {
        //CAMPOS
        rolBLL rBll = new rolBLL();

        //METODOS

        //CargarDatagrid
        private void FillGrid()
        {
            dgRol.DataSource = rBll.GetName();
            dgRol.DataBind();
        }

        //Buscar y cargar rol
        private void FillText(rol ob = null, bool initial = false)
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
                    rol obj = new rol();
                    obj = rBll.GetById(Convert.ToInt32(txtId.Text));
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
                rol obj = new rol();
                obj.nombre = txtNombre.Text;
                obj.descripcion = txtDescripcion.Text;
                if (txtId.Text.Trim() != "")
                    obj.id = Convert.ToInt32(txtId.Text);
                rBll.Save(obj);
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
                    rBll.Delete(Convert.ToInt32(txtId.Text));
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

        protected void dgRol_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            if (e.NewSelectedIndex > -1)
            {
                rol ob = rBll.GetById(Convert.ToInt32(dgRol.DataKeys[e.NewSelectedIndex].Value));
                FillText(ob);
            }

        }

        protected void dgRol_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                dgRol.PageIndex = e.NewPageIndex;
                FillGrid();
            }
            catch (Exception ex)
            {
                msgBox.InnerText = "Error: " + ex.Message;
            }
        }
    }
}