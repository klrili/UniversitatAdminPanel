using dz.Data.Models;
using dz.Data.SqlAcces;

namespace dz.Data.DataAcces
{
    public class DepartamentAndFacultetDataAcces : IDepartamentAndFacultetDataAcces
    {
        private readonly ISqlAcces _sqlAcces;

        public DepartamentAndFacultetDataAcces(ISqlAcces sqlAcces)
        {
            _sqlAcces = sqlAcces;
        }
        public Task<IEnumerable<DepartamentAndFacultet>> GetAll()
        {
            return _sqlAcces.LoadData<DepartamentAndFacultet>(new { }, "[dbo].[spDepartamentsInFacultet_GetAll]");
        }
        public Task<IEnumerable<DepartamentAndFacultet>> GetById(int id)
        {
            return _sqlAcces.LoadData<DepartamentAndFacultet>(new { id }, "[dbo].[spDepartamentsInFacultet_GetById]");
        }
        public Task Add(DepartamentAndFacultet DepartamentAndFacultet)
        {
            return _sqlAcces.SaveData(new { departament_id = DepartamentAndFacultet.departament_id, facultet_id = DepartamentAndFacultet.facultet_id }, "[dbo].[spDepartamentsInFacultet_Insert]");
        }
        public Task Update(DepartamentAndFacultet DepartamentAndFacultet)
        {
            return _sqlAcces.SaveData(DepartamentAndFacultet, "[dbo].[spDepartamentsInFacultet_Update]");
        }
        public Task Delete(DepartamentAndFacultet DepartamentAndFacultet)
        {
            return _sqlAcces.SaveData(new { departament_id = DepartamentAndFacultet.departament_id, facultet_id = DepartamentAndFacultet.facultet_id }, "[dbo].[spDepartamentsInFacultet_Delete]");
        }
    }
}
