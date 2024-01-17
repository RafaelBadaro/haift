//
//  MoodTodayView.swift
//  haift
//
//  Created by Rafael Badaró on 03/01/24.
//

import SwiftUI

struct MoodTodayView: View {
    var body: some View {

        Button(action: {
            
        }, label: {
            HStack{
                VStack (alignment: .center, spacing: 3){
                    Text("😁")
                        .font(.title)
                    
                    Text("tap here to change today's mood")
                        .font(.footnote)
                        .foregroundColor(.mint)
                }
            }.padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black, lineWidth: 0.2)
                        .shadow(
                          color: Color.black,
                          radius: 5,
                          x: 0,
                          y: 0
                        )
                )
        })
    }
}

struct MoodTodayView_Previews: PreviewProvider {
    static var previews: some View {
        MoodTodayView()
    }
}
