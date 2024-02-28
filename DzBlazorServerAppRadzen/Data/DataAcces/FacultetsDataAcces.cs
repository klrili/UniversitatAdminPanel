using dz.Data.Models;
using dz.Data.SqlAcces;
using DzBlazorServerAppRadzen.Pages;

namespace dz.Data.DataAcces
{
    public class FacultetsDataAcces : IFacultetsDataAcces
    {
        private readonly ISqlAcces _sqlAcces;

        public FacultetsDataAcces(ISqlAcces sqlAcces)
        {
            _sqlAcces = sqlAcces;
        }
        public Task<IEnumerable<Facultet>> GetAll()
        {
            return _sqlAcces.LoadData<Facultet>(new { }, "[dbo].[spFacultets_GetAll]");
        }
        public Task<IEnumerable<Facultet>> GetById(int FacultetId)
        {
            return _sqlAcces.LoadData<Facultet>(new { FacultetId }, "[dbo].[spFacultets_GetById]");
        }
        public Task Add(Facultet facultet)
        {
            return _sqlAcces.SaveData(new { name = facultet.name, note = facultet.note}, "[dbo].[spFacultets_Insert]");
        }
        public Task Update(Facultet Facultet)
        {
            return _sqlAcces.SaveData(new { Facultet_id = Facultet.Id, name = Facultet.name, note = Facultet.note}, "[dbo].[spFacultets_Update]");
        }
        public Task Delete(int FacultetId)
        {
            return _sqlAcces.SaveData(new { FacultetId }, "[dbo].[spFacultets_Delete]");
        }
    }
}
