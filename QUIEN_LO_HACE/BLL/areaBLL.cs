using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    //Implementación de la interfaz
    public class areaBLL : IAbstract<area, int>
    {

        //CAMPOS

        private quienlohaceEntities ctx = new quienlohaceEntities();

        //METODOS DE LA INTERFAZ

        //Agregar
        public void Add(area obj)
        {
            ctx.area.Add(obj);
            ctx.SaveChanges();
        }

        //Actualizar
        public void Update(area obj)
        {
            var x = ctx.area.Find(obj.id);
            if (x != null)
            {
                ctx.Entry(x).CurrentValues.SetValues(obj);
                ctx.SaveChanges();
            }
        }

        //Eliminar
        public void Delete(int id)
        {
            var x = ctx.area.Find(id);
            if (x != null)
            {
                ctx.area.Remove(x);
                ctx.SaveChanges();
            }
        }

        //Listar
        public List<area> GetAll()
        {
            return ctx.area.ToList();
        }

        //Buscar 
        public area GetById(int id)
        {
            return ctx.area.Find(id);
        }

        //Contar
        public int Count()
        {
            return ctx.area.Count();
        }

    }
}
