//
//  MainView.swift
//  haift
//
//  Created by Rafael Badaró on 17/01/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var showMenu = false
    
    var body: some View {
        NavigationStack {
            VStack{
                MoodTodayView()
                CalendarMainView()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Button (action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
            }
            .padding()
        }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
