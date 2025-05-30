namespace MedicalService.Models
{
    public class Patient : Person
    {
        public string adress { get; set; }
        public string[] Diseases { get; set; }
        public string prescriptionID { get; set; }
    }
} 