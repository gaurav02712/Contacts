//
//  ContactList.swift
//  Contacts
//
//  Created by Gaurav Pandey on 20/08/25.
//

import SwiftUI

struct ContactListView: View {
    
    let viewModel: ContactListViewModel
    
    var body: some View {
        NavigationStack {
            List(viewModel.contacts, rowContent: { contact in
                ContactRow(contact: contact)
            })
            .navigationTitle("Contacts")
            .navigationBarTitleDisplayMode(.automatic)
        }
        .onAppear {
            viewModel.fetchContacts()
        }
    }
    //        .onAppear(perform: T##(() -> Void)?)
}



#Preview {
    ContactListView(viewModel: ContactListViewModel())
}
