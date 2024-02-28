using dz.Data.Models;
using dz.Data.SqlAcces;

namespace dz.Data.DataAcces
{
    public class DepartamentsDataAcces : IDepartamentsDataAcces
    {
        private readonly ISqlAcces _sqlAcces;

        public DepartamentsDataAcces(ISqlAcces sqlAcces)
        {
            _sqlAcces = sqlAcces;
        }
        public Task<IEnumerable<Departament>> GetAll()
        {
            return _sqlAcces.LoadData<Departament>(new { }, "[dbo].[spDepartaments_GetAll]");
        }
        public Task<IEnumerable<Departament>> GetById(int id)
        {
            return _sqlAcces.LoadData<Departament>(new { id }, "[dbo].[spDepartaments_GetById]");
        }
        public Task Add(object param)
        {
            return _sqlAcces.SaveData(param, "[dbo].[spDepartaments_Insert]");
        }
        public Task Update(Departament departament)
        {
            return _sqlAcces.SaveData(departament, "[dbo].[spDepartaments_Update]");
        }
        public Task Delete(int id)
        {
            return _sqlAcces.SaveData(new { id }, "[dbo].[spDepartaments_Delete]");
        }
    }
}
