using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using BLL;

namespace BLL.Extension
{
    static public class extensionEstadoBLL
    {
        //CAMPOS

        static quienlohaceEntities ctx = new quienlohaceEntities();

        //METODOS

        //Salvar
        static public void Save(this estadoUsuarioBLL a, estadoUsuario obj)
        {
            var x = ctx.estadoUsuario.Find(obj.id);
            if (x != null)
                ctx.Entry(x).CurrentValues.SetValues(obj);
            else
                ctx.estadoUsuario.Add(obj);
            ctx.SaveChanges();
        }

        //Buscar Nombre
        static public IEnumerable<object> GetName(this estadoUsuarioBLL e)
        {
            var x = (from t in ctx.estadoUsuario
                     select new
                     {
                         Id = t.id,
                         Estado = t.nombre,
                         Descripcion = t.descripcion
                     }).ToList();
            return x;
        }
    }
}
