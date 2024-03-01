//
//  DayView.swift
//  haift
//
//  Created by Rafael Badaró on 29/02/24.
//

import SwiftUI

struct DayView: View {
    let day: Int
    
    var body: some View {
        Text("\(day)")
            .frame(width: 30, height: 30)
            .background(Color.blue)
            .cornerRadius(15)
            .foregroundColor(.white)
            .padding(5)
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: 1)
    }
}
