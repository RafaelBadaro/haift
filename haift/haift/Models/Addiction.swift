//
//  Mood.swift
//  haift
//
//  Created by Rafael Badaró on 03/01/24.
//

import Foundation

struct Addiction: Identifiable, Codable  {
    let id: UUID
    let title: String
    let streak: Int
    let type: AddictionTypes
    
    init(id: UUID, title: String, streak: Int, type: AddictionTypes) {
         self.id = id
         self.title = title
         self.streak = streak
         self.type = type
     }
    
    func typeDescription() -> String {
        switch type {
        case .smoking:
            return "smoking"
        case .alcohol:
            return "drinking alcohol"
        case .gambling:
            return "gambling"
        case .other:
            return ""
        }
    }
    
}

enum AddictionTypes: Codable {
    case smoking
    case alcohol
    case gambling
    case other
}


struct AddictionMockData {
    let mockAddictions: [Addiction]
    init() {
         self.mockAddictions = [
            Addiction(id: UUID(), title: "Smoking Addiction", streak: 10, type: .smoking),
            Addiction(id: UUID(), title: "Alcohol Addiction", streak: 5, type: .alcohol),
            Addiction(id: UUID(), title: "Gambling Addiction", streak: 15, type: .gambling)
        ]
     }
    
}
