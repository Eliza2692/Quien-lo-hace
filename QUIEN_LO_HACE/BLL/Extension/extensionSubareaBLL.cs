using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using BLL;

namespace BLL.Extension
{
    static public class extensionSubareaBLL
    {
        //CAMPOS

        static quienlohaceEntities ctx = new quienlohaceEntities();

        //METODOS

        //Salvar
        static public void Save(this subareaBLL s, subarea obj)
        {
            var x = ctx.subarea.Find(obj.id);
            if (x != null)
                ctx.Entry(x).CurrentValues.SetValues(obj);
            else
                ctx.subarea.Add(obj);
            ctx.SaveChanges();
        }


        //Buscar Nombre
        static public IEnumerable<object> GetName(this subareaBLL s)
        {

            var x = (from t in ctx.subarea
                     select new
                     {
                         Id = t.id,
                         Subarea = t.nombre,
                         Area=t.idarea
                     }).ToList();
            return x;
        }
    }
}
