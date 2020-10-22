using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    //Interfaz de métodos en las diferentes clases
    public interface IAbstract<T, T2>
        where T : class
        where T2 : struct
    {
        //Agregar objeto
        void Add(T obj);

        //Actualizar Objeto
        void Update(T obj);

        //Eliminar Objeto
        void Delete(T2 id);

        //Obtener-Listar Objetos
        List<T> GetAll();

        //Buscar
        T GetById(T2 id);

        //Cuenta los elementos
        int Count();

    }
}
