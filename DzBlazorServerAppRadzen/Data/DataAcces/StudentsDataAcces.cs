using dz.Data.Models;
using dz.Data.SqlAcces;
using DzBlazorServerAppRadzen.Pages;

namespace dz.Data.DataAcces
{
    public class StudentsDataAcces : IStudentsDataAcces
    {
        private readonly ISqlAcces _sqlAcces;

        public StudentsDataAcces(ISqlAcces sqlAcces)
        {
            _sqlAcces = sqlAcces;
        }

        public Task<IEnumerable<Student>> GetAll()
        {
            return _sqlAcces.LoadData<Student>(new { }, "[dbo].[spStudents_GetAll]");
        }
        public Task<IEnumerable<Student>> GetById(int id)
        {
            return _sqlAcces.LoadData<Student>(new { id }, "[dbo].[spStudents_GetById]");
        }
        public Task Add(Student student)
        {
            return _sqlAcces.SaveData(new
            {
                firstName = student.firstName,
                lastName = student.lastName,
                group_id = student.group_id,
                avgMark = student.avgMark
            }, "[dbo].[spStudents_Insert]");
        }
        public Task Update(Student student)
        {
            return _sqlAcces.SaveData(new
            {
                student_id = student.Id,
                firstName = student.firstName,
                lastName = student.lastName,
                group_id = student.group_id,
                avgMark = student.avgMark
            }, "[dbo].[spStudents_Update]");
        }
        public Task Delete(int student_id)
        {
            return _sqlAcces.SaveData(new { student_id }, "[dbo].[spStudents_Delete]");
        }
    }
}
