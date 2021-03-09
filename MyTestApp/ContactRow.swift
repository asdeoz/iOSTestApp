//
//  ContactRow.swift
//  MyTestApp
//
//  Created by Carles Garcia Bercial on 3/8/21.
//

import SwiftUI

struct ContactRow: View {
    var contact: Contact
    
    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            Text(contact.name).font(.title)
            HStack(content: {
                Text(contact.jobTitle).font(.subheadline)
                Spacer()
                Text(contact.phone).font(.subheadline)
            })
        }).padding()
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: Contact(name: "John", jobTitle: "Engineer", phone: "609-645-2836"))
    }
}

