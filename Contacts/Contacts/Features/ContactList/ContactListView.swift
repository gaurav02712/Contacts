//
//  ContactList.swift
//  Contacts
//
//  Created by Gaurav Pandey on 20/08/25.
//

import SwiftUI

struct ContactListView: View {
    
    let viewModel: ContactListViewModel
    @State var searchText = ""
    
    var body: some View {
        NavigationStack {
            List(viewModel.contacts, rowContent: { contact in
                ContactRow(contact: contact)
            })
            .listStyle(.plain)
            .searchable(text: $searchText, prompt: "Search")
            .searchToolbarBehavior(.minimize)
            .navigationTitle("Contacts")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                if #available(iOS 26.0, *) {
                    DefaultToolbarItem(kind: .search, placement: .bottomBar)
                    ToolbarSpacer(.flexible, placement: .bottomBar)
                }
                ToolbarItem(placement: .bottomBar) {
                    Button("+") { }
                }
            }
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

