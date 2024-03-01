//
//  Calendar.swift
//  haift
//
//  Created by Rafael Badaró on 29/02/24.
//

import Foundation


struct Calendar {
    let years: [Year]
}


struct Year {
    let year: Int
    let months: [Month]
}

struct Month {
    let month: Int
    let days: [Day]
}

struct Day {
    let day: Int
    let checked: Bool
}


struct MockData {
    static func generateMockCalendar() -> Calendar {
        let years = (2022...2024).map { year -> Year in
            return Year(year: year, months: (1...12).map { month -> Month in
                return Month(month: month, days: (1...30).map { day -> Day in
                    return Day(day: day, checked: Bool.random())
                })
            })
        }
        return Calendar(years: years)
    }
}
