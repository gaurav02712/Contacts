//
//  Contact.swift
//  Contacts
//
//  Created by Gaurav Pandey on 20/08/25.
//

import Foundation

struct Contact: Identifiable {
    var id : String
    let firstName : String
    let lName : String?
    let email : String?
    let initials: String
//    var image: Image?  Will incorporate image later
    
    init(firstName: String, lName: String?, email: String?) {
        self.id = UUID().uuidString
        self.firstName = firstName
        self.lName = lName
        self.email = email
        var firstInitial = firstName.first?.uppercased() ?? ""
        if let lName = lName?.first {
            firstInitial = firstInitial + lName.uppercased()
        }
        self.initials = firstInitial
//        self.image = nil
    }
}
