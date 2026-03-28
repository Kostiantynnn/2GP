@isTest
public class ContactTriggerHandlerTest {
    @isTest
    public static void testBeforeInsertHandler() {
        Contact contact = new Contact(FirstName = 'Test', LastName = 'Contact');
        insert contact;

        contact = [SELECT FirstName FROM Contact WHERE Id = :contact.Id LIMIT 1];
        System.assertEquals(contact.FirstName, 'Test+');
    }
}