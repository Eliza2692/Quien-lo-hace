using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using BLL;

namespace BLL.Extension
{
    static public class extensionRolBLL
    {
        //CAMPOS

        static quienlohaceEntities ctx = new quienlohaceEntities();

        //METODOS

        //Salvar
        static public void Save(this rolBLL r, rol obj)
        {
            var x = ctx.rol.Find(obj.id);
            if (x != null)
                ctx.Entry(x).CurrentValues.SetValues(obj);
            else
                ctx.rol.Add(obj);
            ctx.SaveChanges();
        }

        //Buscar Nombre
        static public IEnumerable<object> GetName(this rolBLL r)
        {
            var x = (from t in ctx.rol
                     select new
                     {
                         Id = t.id,
                         Rol = t.nombre,
                         Descripcion = t.descripcion
                     }).ToList();
            return x;
        }
    }
}
