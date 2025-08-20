//
//  ContactListViewModel.swift
//  Contacts
//
//  Created by Gaurav Pandey on 20/08/25.
//

import Foundation
import Combine


class ContactListViewModel: Observable {
    
    @Published var contacts: [Contact] = [
        Contact(firstName: "Alice", lName: "Anderson", email: "alice.anderson@example.com"),
        Contact(firstName: "Bob", lName: "Brown", email: "bob.brown@example.com"),
        Contact(firstName: "Charlie", lName: "Clark", email: "charlie.clark@example.com"),
        Contact(firstName: "Diana", lName: "Davis", email: "diana.davis@example.com"),
        Contact(firstName: "Ethan", lName: "Edwards", email: "ethan.edwards@example.com"),
        Contact(firstName: "Fiona", lName: "Foster", email: "fiona.foster@example.com"),
        Contact(firstName: "George", lName: "Garcia", email: "george.garcia@example.com"),
        Contact(firstName: "Hannah", lName: "Hughes", email: "hannah.hughes@example.com"),
        Contact(firstName: "Ian", lName: "Iverson", email: "ian.iverson@example.com"),
        Contact(firstName: "Julia", lName: "Jones", email: "julia.jones@example.com"),
        Contact(firstName: "Kevin", lName: "King", email: "kevin.king@example.com"),
        Contact(firstName: "Laura", lName: "Lee", email: "laura.lee@example.com"),
        Contact(firstName: "Michael", lName: "Moore", email: "michael.moore@example.com"),
        Contact(firstName: "Nina", lName: "Nelson", email: "nina.nelson@example.com"),
        Contact(firstName: "Oliver", lName: "Owens", email: "oliver.owens@example.com"),
        Contact(firstName: "Paula", lName: "Parker", email: "paula.parker@example.com"),
        Contact(firstName: "Quentin", lName: "Quinn", email: "quentin.quinn@example.com"),
        Contact(firstName: "Rachel", lName: "Reed", email: "rachel.reed@example.com"),
        Contact(firstName: "Steven", lName: "Scott", email: "steven.scott@example.com"),
        Contact(firstName: "Tina", lName: "Turner", email: "tina.turner@example.com")
    ]
    
    func fetchContacts() -> Void {
        self.contacts = ContactListViewModel.getDummyContacts()
    }
    
    
    static func getDummyContacts() -> [Contact]{
        return [
            Contact(firstName: "Alice", lName: "Anderson", email: "alice.anderson@example.com"),
            Contact(firstName: "Bob", lName: "Brown", email: "bob.brown@example.com"),
            Contact(firstName: "Charlie", lName: "Clark", email: "charlie.clark@example.com"),
            Contact(firstName: "Diana", lName: "Davis", email: "diana.davis@example.com"),
            Contact(firstName: "Ethan", lName: "Edwards", email: "ethan.edwards@example.com"),
            Contact(firstName: "Fiona", lName: "Foster", email: "fiona.foster@example.com"),
            Contact(firstName: "George", lName: "Garcia", email: "george.garcia@example.com"),
            Contact(firstName: "Hannah", lName: "Hughes", email: "hannah.hughes@example.com"),
            Contact(firstName: "Ian", lName: "Iverson", email: "ian.iverson@example.com"),
            Contact(firstName: "Julia", lName: "Jones", email: "julia.jones@example.com"),
            Contact(firstName: "Kevin", lName: "King", email: "kevin.king@example.com"),
            Contact(firstName: "Laura", lName: "Lee", email: "laura.lee@example.com"),
            Contact(firstName: "Michael", lName: "Moore", email: "michael.moore@example.com"),
            Contact(firstName: "Nina", lName: "Nelson", email: "nina.nelson@example.com"),
            Contact(firstName: "Oliver", lName: "Owens", email: "oliver.owens@example.com"),
            Contact(firstName: "Paula", lName: "Parker", email: "paula.parker@example.com"),
            Contact(firstName: "Quentin", lName: "Quinn", email: "quentin.quinn@example.com"),
            Contact(firstName: "Rachel", lName: "Reed", email: "rachel.reed@example.com"),
            Contact(firstName: "Steven", lName: "Scott", email: "steven.scott@example.com"),
            Contact(firstName: "Tina", lName: "Turner", email: "tina.turner@example.com")
        ]
    }
}

