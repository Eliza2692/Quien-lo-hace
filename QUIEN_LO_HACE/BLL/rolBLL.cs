using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    //Implementación de la interfaz
    public class rolBLL : IAbstract<rol, int>
    {

        //CAMPOS

        private quienlohaceEntities ctx = new quienlohaceEntities();

        //METODOS DE LA INTERFAZ

        //Agregar
        public void Add(rol obj)
        {
            ctx.rol.Add(obj);
            ctx.SaveChanges();
        }

        //Actualizar
        public void Update(rol obj)
        {
            var x = ctx.rol.Find(obj.id);
            if (x != null)
            {
                ctx.Entry(x).CurrentValues.SetValues(obj);
                ctx.SaveChanges();
            }
        }

        //Eliminar
        public void Delete(int id)
        {
            var x = ctx.rol.Find(id);
            if (x != null)
            {
                ctx.rol.Remove(x);
                ctx.SaveChanges();
            }
        }

        //Listar
        public List<rol> GetAll()
        {
            return ctx.rol.ToList();
        }

        //Buscar 
        public rol GetById(int id)
        {
            return ctx.rol.Find(id);
        }

        //Contar
        public int Count()
        {
            return ctx.rol.Count();
        }
    }
}
