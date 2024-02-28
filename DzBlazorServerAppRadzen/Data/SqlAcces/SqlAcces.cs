using Dapper;
using System.Data.SqlClient;

namespace dz.Data.SqlAcces
{
    public class SqlAcces : ISqlAcces
    {
        private readonly string _connectionString;
        public SqlAcces(string connectionString)
        {
            _connectionString = connectionString;
        }

        public async Task<IEnumerable<T>> LoadData<T>(object param, string command)
        {
            try
            {
                using var b = new SqlConnection(_connectionString);
            }
            catch (Exception e)
            {

                await Console.Out.WriteLineAsync(e.Message); ;
            }
            using var connection = new SqlConnection(_connectionString);

            return await connection.QueryAsync<T>(command, param, commandType: System.Data.CommandType.StoredProcedure);
        }

        public async Task SaveData(object param, string command)
        {
            try
            {
                using var connection = new SqlConnection(_connectionString);
                await connection.ExecuteAsync(command, param, commandType: System.Data.CommandType.StoredProcedure);
            }
            catch (Exception e)
            {
                await Console.Out.WriteLineAsync(e.Message);
            }
        }
    }
}
