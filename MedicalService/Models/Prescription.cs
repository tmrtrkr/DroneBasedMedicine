namespace MedicalService.Models
{
    public class Prescription
    {
        public int id { get; set; }
        public string mpID { get; set; }
        public string TCKN { get; set; }
        public string medicineID { get; set; }
        public string barcodeNumber { get; set; }
        public string prescriptionID { get; set; }
    }
} 