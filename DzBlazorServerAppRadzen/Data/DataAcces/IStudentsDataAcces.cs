using dz.Data.Models;

namespace dz.Data.DataAcces
{
    public interface IStudentsDataAcces
    {
        Task Add(Student student);
        Task Delete(int id);
        Task<IEnumerable<Student>> GetAll();
        Task<IEnumerable<Student>> GetById(int id);
        Task Update(Student student);
    }
}