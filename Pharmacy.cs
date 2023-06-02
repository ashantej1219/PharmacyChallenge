namespace PharmacyApi.Models.Domain
{
    public class Pharmacy
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public int PrescriptionsFilled { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }
        public int PharmacistInfo { get; set; }
        public int WareHouseInfo { get; set; }
    }
}
