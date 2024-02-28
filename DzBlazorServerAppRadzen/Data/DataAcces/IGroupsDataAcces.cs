using dz.Data.Models;

namespace dz.Data.DataAcces
{
    public interface IGroupsDataAcces
    {
        Task Add(GroupModel GroupModel);
        Task Delete(int id);
        Task<IEnumerable<GroupModel>> GetAll();
        Task<IEnumerable<GroupModel>> GetById(int id);
        Task Update(GroupModel GroupModel);
    }
}