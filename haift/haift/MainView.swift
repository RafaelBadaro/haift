//
//  MainView.swift
//  haift
//
//  Created by Rafael Badaró on 02/01/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack{
            ProfileView()
            NavigationLink("Profile", destination: ProfileView)
            //NavigationLink("Todays mood")
            //NavigationLink("App settings")
        }
            
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
