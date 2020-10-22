using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    //Implementación de la interfaz
    public class estadoUsuarioBLL : IAbstract<estadoUsuario, int>
    {

        //CAMPOS

        private quienlohaceEntities ctx = new quienlohaceEntities();

        //METODOS DE LA INTERFAZ

        //Agregar
        public void Add(estadoUsuario obj)
        {
            ctx.estadoUsuario.Add(obj);
            ctx.SaveChanges();
        }

        //Actualizar
        public void Update(estadoUsuario obj)
        {
            var x = ctx.estadoUsuario.Find(obj.id);
            if (x != null)
            {
                ctx.Entry(x).CurrentValues.SetValues(obj);
                ctx.SaveChanges();
            }
        }

        //Eliminar
        public void Delete(int id)
        {
            var x = ctx.estadoUsuario.Find(id);
            if (x != null)
            {
                ctx.estadoUsuario.Remove(x);
                ctx.SaveChanges();
            }
        }

        //Listar
        public List<estadoUsuario> GetAll()
        {
            return ctx.estadoUsuario.ToList();
        }

        //Buscar 
        public estadoUsuario GetById(int id)
        {
            return ctx.estadoUsuario.Find(id);
        }

        //Contar
        public int Count()
        {
            return ctx.estadoUsuario.Count();
        }
    }
}
