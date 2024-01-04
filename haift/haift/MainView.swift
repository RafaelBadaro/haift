//
//  MainView.swift
//  haift
//
//  Created by Rafael Badaró on 02/01/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Profile") {
                ProfileView()
            }
            NavigationLink("Mood Today"){
                MoodTodayView()
            }
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
