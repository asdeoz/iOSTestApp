//
//  ContactDetail.swift
//  MyTestApp
//
//  Created by Carles Garcia Bercial on 3/8/21.
//

import SwiftUI

struct ContactDetail: View {
    var contact: Contact
    
    var body: some View {
        VStack {
            Text(contact.name)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.green)
            HStack {
                Text(contact.jobTitle)
                    .font(.headline)
                Text(" - ")
                Text(contact.phone)
                    .font(.headline)
            }
        }
        .background(Image("persona5").opacity(0.6))
    }
}

struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetail(contact: Contact(name: "John", jobTitle: "Scrum Master", phone: "608-111-2222"))
    }
}
