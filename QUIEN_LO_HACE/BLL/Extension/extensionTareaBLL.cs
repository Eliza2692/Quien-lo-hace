using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using BLL;

namespace BLL.Extension
{
    static public class extensionTareaBLL
    {

        //CAMPOS

        static quienlohaceEntities ctx = new quienlohaceEntities();

        //METODOS

        //Salvar
        static public void Save(this tareaBLL t, tarea obj)
        {
            var x = ctx.tarea.Find(obj.id);
            if (x != null)
                ctx.Entry(x).CurrentValues.SetValues(obj);
            else
                ctx.tarea.Add(obj);
            ctx.SaveChanges();
        }
    }
}
