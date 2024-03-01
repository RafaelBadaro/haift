//
//  AccessCardView.swift
//  haift
//
//  Created by Rafael Badaró on 29/02/24.
//

import SwiftUI

struct AccessCardView: View {
    // TODO - initialize this with db data
    @State var addictions: [Addiction]
    
    var body: some View {
        List(addictions) { addiction in
            NavigationLink(destination: AddictionView(addiction: addiction)){
                VStack(alignment: .leading) {
                    Text(addiction.title)
                        .font(.headline)
                }
            }
        }.navigationBarTitle("Addictions")
    }
}

struct AccessCardView_Previews: PreviewProvider {
    static var previews: some View {
        AccessCardView(addictions: [])
    }
}


//        Button(action: {
//            // TODO - got to the addction page related to this one
//        }, label: {
//            HStack{
//                VStack (alignment: .center, spacing: 3){
//                    Text("😁")
//                        .font(.title)
//
//                    Text("tap here to change today's mood")
//                        .font(.footnote)
//                        .foregroundColor(.mint)
//                }
//            }.padding()
//                .overlay(
//                    RoundedRectangle(cornerRadius: 20)
//                        .stroke(.black, lineWidth: 0.2)
//                        .shadow(
//                          color: Color.black,
//                          radius: 5,
//                          x: 0,
//                          y: 0
//                        )
//                )
//        })
            
            
