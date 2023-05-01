
// ------------- 4/18/2023 ------------
// =========== APEX TESTING MODULE ====================

public class RandomContactFactory {

    public static List<Contact> generateRandomContacts (Integer count, String lastname){

        List<Contact> contacts = new List<Contact>();

        for(Integer i=1; i<=count; i++){

            contacts.add(new Contact(FirstName = 'Test', + i, LastName = LastName) );


        }
        return contacts ;

    }
}