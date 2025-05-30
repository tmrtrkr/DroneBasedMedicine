namespace MedicalService.Models
{
    public class Order
    {
        public int id { get; set; }
        public string orderID { get; set; }
        public string prescriptionID { get; set; }
        public float totalPrice { get; set; }
        public string orderDroneID { get; set; }
        public string PatientAddress { get; set; }
        public bool orderType { get; set; }
        public int orderSize { get; set; }
    }
} 