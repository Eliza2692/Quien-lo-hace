using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using BLL;

namespace BLL.Extension
{
    static public class extensionAreaBLL
    {
        //CAMPOS

        static quienlohaceEntities ctx = new quienlohaceEntities();

        //METODOS

        //Salvar
        static public void Save(this areaBLL a, area obj)
        {
            var x = ctx.area.Find(obj.id);
            if (x != null)
                ctx.Entry(x).CurrentValues.SetValues(obj);
            else
                ctx.area.Add(obj);
            ctx.SaveChanges();
        }

        //Buscar Nombre
        static public IEnumerable<object> GetName(this areaBLL e)
        {
            var x = (from t in ctx.area
                     select new
                     {
                         Id = t.id,
                         Area = t.nombre,
                         Descripcion = t.descripcion
                     }).ToList();
            return x;
        }
    }
}
