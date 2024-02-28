namespace dz.Data.Models
{
    public class Student
    {
        public int Id { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public int group_id { get; set; }
        public DateTime registrtationData { get; set; }
        public decimal avgMark { get; set; }
    }
}
