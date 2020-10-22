using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    //Implementación de la interfaz
    public class subareaBLL : IAbstract<subarea, int>
    {

        //CAMPOS

        private quienlohaceEntities ctx = new quienlohaceEntities();

        //METODOS DE LA INTERFAZ

        //Agregar
        public void Add(subarea obj)
        {
            ctx.subarea.Add(obj);
            ctx.SaveChanges();
        }

        //Actualizar
        public void Update(subarea obj)
        {
            var x = ctx.subarea.Find(obj.id);
            if (x != null)
            {
                ctx.Entry(x).CurrentValues.SetValues(obj);
                ctx.SaveChanges();
            }
        }

        //Eliminar
        public void Delete(int id)
        {
            var x = ctx.subarea.Find(id);
            if (x != null)
            {
                ctx.subarea.Remove(x);
                ctx.SaveChanges();
            }
        }

        //Listar
        public List<subarea> GetAll()
        {
            return ctx.subarea.ToList();
        }

        //Buscar 
        public subarea GetById(int id)
        {
            return ctx.subarea.Find(id);
        }

        //Contar
        public int Count()
        {
            return ctx.subarea.Count();
        }
    }
}

