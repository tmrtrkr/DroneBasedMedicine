abstract class person
{
    private String name { get; set; }
    private String surname { get; set; }
    private String TCKN { get; set; }
    private int age { get; set; }

    private int insuranceType {get;set;}



}

class medicalPractioner : person
{
    private String profession; {get;set;}
    private String hospitalID {get;set;}
    private String mpID {get;set;}

    public static void createPrescription()
    {
        console.writeline("CreatedPrescription")
    }
}

class patient : person
{
    private String adress {get;set;}
    private String[] Diseases {get;set;}


    public static void login()
    {
        console.writeline("logging...")
    }
    public static void requestMedicine()
    {
        console.writeline("requesting...")
    }
    public static void SendPaymentInfo()
    {
        console.writeline("sending...")
    }
}

