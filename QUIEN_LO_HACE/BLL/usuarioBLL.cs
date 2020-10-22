using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;


namespace BLL
{
    //Implementación de la interfaz
    public class usuarioBLL : IAbstract<usuario, int>
    {

        //CAMPOS

        private quienlohaceEntities ctx = new quienlohaceEntities();

        //METODOS DE LA INTERFAZ

        //Agregar
        public void Add(usuario obj)
        {
            ctx.usuario.Add(obj);
            ctx.SaveChanges();
        }

        //Actualizar
        public void Update(usuario obj)
        {
            var x = ctx.usuario.Find(obj.id);
            if (x != null)
            {
                ctx.Entry(x).CurrentValues.SetValues(obj);
                ctx.SaveChanges();
            }
        }

        //Eliminar
        public void Delete(int id)
        {
            var x = ctx.usuario.Find(id);
            if (x != null)
            {
                ctx.usuario.Remove(x);
                ctx.SaveChanges();
            }
        }

        //Listar
        List<usuario> IAbstract<usuario, int>.GetAll()
        {
            return ctx.usuario.ToList();
        }

        //Buscar 
        usuario IAbstract<usuario, int>.GetById(int id)
        {
            return ctx.usuario.Find(id);
        }

        //Contar
        public int Count()
        {
            return ctx.usuario.Count();
        }
    }
}
