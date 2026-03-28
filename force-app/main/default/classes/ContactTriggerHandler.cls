public class ContactTriggerHandler {
    public static void beforeInsertHandler(List<Contact> contacts) {
        
        for (Contact contact : contacts) {
            contact.FirstName = contact.FirstName + '+';
        }
    }
}