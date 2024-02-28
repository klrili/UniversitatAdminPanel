namespace dz.Data.SqlAcces
{
    public interface ISqlAcces
    {
        Task<IEnumerable<T>> LoadData<T>(object param, string command);
        Task SaveData(object param, string command);
    }
}