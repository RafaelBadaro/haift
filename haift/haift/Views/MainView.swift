//
//  MainView.swift
//  haift
//
//  Created by Rafael Badaró on 17/01/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var showMenu = false
    //@State var addictions: [Addiction] = AddictionMockData.init().mockAddictions
    @State private var addictions: [Addiction] = []
    
    var body: some View {
        NavigationStack {
            VStack{
                Button (action: {
                    addAddiction()
                }, label: {
                    Text("+")
                })
                if (!addictions.isEmpty) {
                    AccessCardView(addictions: addictions)
                }else{
                    Text("You dont have any addictions registered")
                    Button (action: {
                        addAddiction()
                    }, label: {
                        Text("Click here to add one")
                    })
                }
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
    
    func addAddiction(){
        print("went here")
        let newAddiction = Addiction(id: UUID(), title: "Smoking Addiction", streak: 0, type: .smoking)
        addictions.append(newAddiction)
        print(addictions)
        addictions = addictions
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
