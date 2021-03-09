//
//  ContentView.swift
//  MyTestApp
//
//  Created by Carles Garcia Bercial on 3/6/21.
//

import SwiftUI

struct Contact {
    var name:String
    var jobTitle:String
    var phone:String
}

struct ContentView: View {
    @State var contacts = [
        Contact(name: "Peter", jobTitle: "Engineer", phone: "6092921000"),
        Contact(name: "Mary", jobTitle: "PO", phone: "6062930022"),
        Contact(name: "Leela", jobTitle: "Scrum Master", phone: "6547389922")
    ]
    
    var body: some View {
        NavigationView {
            List(contacts, id: \.name) { contact in
                NavigationLink(destination: ContactDetail(contact: contact)) {
                    ContactRow(contact: contact)
                }
            }
            .navigationBarTitle(Text("Contacts"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}

