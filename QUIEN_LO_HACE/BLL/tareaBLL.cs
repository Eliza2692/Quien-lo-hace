using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    //Implementación de la interfaz
    public class tareaBLL : IAbstract<tarea, int>
    {

        //CAMPOS

        private quienlohaceEntities ctx = new quienlohaceEntities();

        //METODOS DE LA INTERFAZ

        //Agregar
        public void Add(tarea obj)
        {
            ctx.tarea.Add(obj);
            ctx.SaveChanges();
        }

        //Actualizar
        public void Update(tarea obj)
        {
            var x = ctx.tarea.Find(obj.id);
            if (x != null)
            {
                ctx.Entry(x).CurrentValues.SetValues(obj);
                ctx.SaveChanges();
            }
        }

        //Eliminar
        public void Delete(int id)
        {
            var x = ctx.tarea.Find(id);
            if (x != null)
            {
                ctx.tarea.Remove(x);
                ctx.SaveChanges();
            }
        }

        //Listar
        List<tarea> IAbstract<tarea, int>.GetAll()
        {
            return ctx.tarea.ToList();
        }

        //Buscar 
        tarea IAbstract<tarea, int>.GetById(int id)
        {
            return ctx.tarea.Find(id);
        }

        //Contar
        public int Count()
        {
            return ctx.tarea.Count();
        }
    }
}
