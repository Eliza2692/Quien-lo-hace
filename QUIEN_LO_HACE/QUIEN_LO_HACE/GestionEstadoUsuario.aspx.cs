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
    public partial class GestionEstado : System.Web.UI.Page
    {
        //CAMPOS
        estadoUsuarioBLL eBLL = new estadoUsuarioBLL();

        //METODOS

        //CargarDatagrid
        private void FillGrid()
        {
            dgEstado.DataSource = eBLL.GetName();
            dgEstado.DataBind();
        }

        //Buscar y cargar estado
        private void FillText(estadoUsuario ob = null, bool initial = false)
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
                    estadoUsuario obj = new estadoUsuario();
                    obj = eBLL.GetById(Convert.ToInt32(txtId.Text));
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
                estadoUsuario obj = new estadoUsuario();
                obj.nombre = txtNombre.Text;
                obj.descripcion = txtDescripcion.Text;
                if (txtId.Text.Trim() != "")
                    obj.id = Convert.ToInt32(txtId.Text);
                eBLL.Save(obj);
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
                    eBLL.Delete(Convert.ToInt32(txtId.Text));
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

        protected void dgEstado_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            if (e.NewSelectedIndex > -1)
            {
                estadoUsuario ob = eBLL.GetById(Convert.ToInt32(dgEstado.DataKeys[e.NewSelectedIndex].Value));
                FillText(ob);
            }
        }

        protected void dgEstado_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                dgEstado.PageIndex = e.NewPageIndex;
                FillGrid();
            }
            catch (Exception ex)
            {
                msgBox.InnerText = "Error: " + ex.Message;
            }
        }
    }
}