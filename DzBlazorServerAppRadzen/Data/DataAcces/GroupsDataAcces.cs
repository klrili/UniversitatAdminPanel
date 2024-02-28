using dz.Data.Models;
using dz.Data.SqlAcces;

namespace dz.Data.DataAcces
{
    public class GroupsDataAcces : IGroupsDataAcces
    {
        private readonly ISqlAcces _sqlAcces;

        public GroupsDataAcces(ISqlAcces sqlAcces)
        {
            _sqlAcces = sqlAcces;
        }

        public Task<IEnumerable<GroupModel>> GetAll()
        {
            return _sqlAcces.LoadData<GroupModel>(new { }, "[dbo].[spGroups_GetAll]");
        }
        public Task<IEnumerable<GroupModel>> GetById(int id)
        {
            return _sqlAcces.LoadData<GroupModel>(new { id }, "[dbo].[spGroups_GetById]");
        }
        public Task Add(GroupModel GroupModel)
        {
            return _sqlAcces.SaveData(new { name = GroupModel.name, facultet_id = GroupModel.facultet_id }, "[dbo].[spGroups_Insert]");
        }
        public Task Update(GroupModel GroupModel)
        {
            return _sqlAcces.SaveData(new { group_id = GroupModel.Id, name = GroupModel.name, facultet_id = GroupModel.facultet_id }, "[dbo].[spGroups_Update]");
        }
        public Task Delete(int group_id)
        {
            return _sqlAcces.SaveData(new { group_id }, "[dbo].[spGroups_Delete]");
        }
    }
}
