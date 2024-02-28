using dz.Data.Models;

namespace dz.Data.DataAcces
{
    public interface IFacultetsDataAcces
    {
        Task Add(Facultet facultet);
        Task Delete(int id);
        Task<IEnumerable<Facultet>> GetAll();
        Task<IEnumerable<Facultet>> GetById(int id);
        Task Update(Facultet Facultet);
    }
}