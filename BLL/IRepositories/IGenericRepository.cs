using System.Collections.Generic;

namespace Gallery.BLL.IRepositories
{
    public interface IGenericRepository<T> where T : class
    {
        T GetById(int id);
        IEnumerable<T> GetAll();
        void Edit(T entity);
        void Insert(T entity);
    }
}
