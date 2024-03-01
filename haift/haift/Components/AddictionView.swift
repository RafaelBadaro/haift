//
//  CalendarMainView.swift
//  haift
//
//  Created by Rafael Badaró on 17/01/24.
//

import SwiftUI


struct AddictionView: View {
    @State var addiction: Addiction
    
    var body: some View {
        VStack {
            Text(addiction.title).font(.headline)
            if addiction.type == .other {
                Text("You are \(addiction.streak) days without your addiction!")  .foregroundColor(.gray)
            } else {
                Text("You are \(addiction.streak) days without \(addiction.typeDescription())!")
                    .foregroundColor(.gray)
            }

        }
    }
}

struct AddictionView_Previews: PreviewProvider {
    static var previews: some View {
        AddictionView(addiction: AddictionMockData.init().mockAddictions[0])
    }
}
