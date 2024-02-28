using dz.Data.Models;

namespace dz.Data.DataAcces
{
    public interface IDepartamentAndFacultetDataAcces
    {
        Task Add(DepartamentAndFacultet DepartamentAndFacultet);
        Task Delete(DepartamentAndFacultet DepartamentAndFacultet);
        Task<IEnumerable<DepartamentAndFacultet>> GetAll();
        Task<IEnumerable<DepartamentAndFacultet>> GetById(int id);
        Task Update(DepartamentAndFacultet DepartamentAndFacultet);
    }
}