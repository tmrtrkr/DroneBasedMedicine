namespace TechnicalStationService.Models
{
    public class TechnicalStation
    {
        public int id { get; set; }
        public string stationID { get; set; }
        public int TotalDroneCapacity { get; set; }
        public int currentNumberOfDrones { get; set; }
        public int readyDrones { get; set; }
        public string adress { get; set; }
    }
} 