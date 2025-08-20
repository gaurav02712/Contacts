import SwiftUI

//
//  ContactRow.swift
//  Contacts
//
//  Created by Gaurav Pandey on 20/08/25.
//


struct ContactRow: View {
    let contact: Contact
    var body: some View {
        HStack (alignment: .center) {
            Text(contact.initials)
                .foregroundStyle(.white)
                .font(.system(size: 24, weight: .bold))
                .frame(width: 48.0, height: 48.0)
                .background(Color(.systemGray4))
                .clipShape(.circle)
            
            VStack (alignment: .leading, spacing: 4) {
                Text(contact.firstName + " " + (contact.lName ?? "").trimmingCharacters(in: .whitespacesAndNewlines))
                    .foregroundStyle(Color.black)
                Text(contact.email ?? "")
                    .foregroundStyle(Color.gray)
            }
            Spacer()
        }.padding(.horizontal)
    }
}

#Preview {
    Group {
        ContactRow(contact: .init(firstName: "Gaurav", lName: "Pandey", email: "grv@gmail.com"))
        ContactRow(contact: .init(firstName: "Gaurav", lName: "", email: "grv@gmail.com"))
        ContactRow(contact: .init(firstName: "Gaurav", lName: nil, email: "grv@gmail.com"))
    }
}

