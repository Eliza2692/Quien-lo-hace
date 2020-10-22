using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using BLL.Extension;

namespace QUIEN_LO_HACE
{
    public partial class GestionSubarea : System.Web.UI.Page
    {
        //CAMPOS
        subareaBLL sBll = new subareaBLL();
        areaBLL aBll = new areaBLL();

        //METODOS

        //CargarDatagrid
        private void FillGrid()
        {
            dgSubarea.DataSource = sBll.GetName();
            dgSubarea.DataBind();
        }

        //Cargar Combobox
        protected void FillCbxArea()
        {
            cbxArea.DataSource = aBll.GetAll();
            cbxArea.DataValueField = "Id";
            cbxArea.DataTextField = "Nombre";
            cbxArea.DataBind();
        }

        //Buscar y cargar rol
        private void FillText(subarea ob = null, bool initial = false)
        {
            if (ob != null)
            {
                txtId.Text = ob.id.ToString();
                txtNombre.Text = ob.nombre;
                cbxArea.SelectedValue=ob.idarea.ToString();
            }
            else
            {
                txtId.Text = "";
                txtNombre.Text = "";
                cbxArea.SelectedIndex = 0;
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
                FillCbxArea();
            }
        }

        //Botón Buscar
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtId.Text.Trim() != "")
                {
                    subarea obj = new subarea();
                    obj = sBll.GetById(Convert.ToInt32(txtId.Text));
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
                subarea obj = new subarea();
                obj.nombre = txtNombre.Text;
                obj.idarea = Convert.ToInt32(cbxArea.SelectedValue);
                if (txtId.Text.Trim() != "")
                    obj.id = Convert.ToInt32(txtId.Text);
                sBll.Save(obj);
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
                    sBll.Delete(Convert.ToInt32(txtId.Text));
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
                subarea ob = sBll.GetById(Convert.ToInt32(dgSubarea.DataKeys[e.NewSelectedIndex].Value));
                FillText(ob);
            }

        }

        protected void dgRol_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                dgSubarea.PageIndex = e.NewPageIndex;
                FillGrid();
            }
            catch (Exception ex)
            {
                msgBox.InnerText = "Error: " + ex.Message;
            }
        }
    }
}