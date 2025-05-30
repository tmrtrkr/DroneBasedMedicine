namespace DroneService.Models
{
    public class Drone
    {
        public int id { get; set; }
        public string stationLocation { get; set; }
        public string currentLocation { get; set; }
        public int percentOfCharge { get; set; }
        public string droneID { get; set; }
        public string currentSituation { get; set; }
        public string[] carriedMedicineIDList { get; set; }
        public int[] droneSize { get; set; }
        public string stationID { get; set; }
    }
} 