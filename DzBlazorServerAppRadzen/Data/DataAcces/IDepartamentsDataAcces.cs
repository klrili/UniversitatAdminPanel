using dz.Data.Models;

namespace dz.Data.DataAcces
{
    public interface IDepartamentsDataAcces
    {
        Task Add(object param);
        Task Delete(int id);
        Task<IEnumerable<Departament>> GetAll();
        Task<IEnumerable<Departament>> GetById(int id);
        Task Update(Departament departament);
    }
}