namespace MedicalService.Models
{
    public abstract class Person
    {
        public int id { get; set; }
        public string name { get; set; }
        public string surname { get; set; }
        public string TCKN { get; set; }
        public int age { get; set; }
        public int insuranceType { get; set; }
    }
} 