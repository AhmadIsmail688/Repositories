//
//  DateFormatter.swift
//  Repositories
//
//  Created by Ahmad Ismail on 30/10/2021.
//

import Foundation

extension Date {
    func uiFormat() -> String? {
        let now = Date()
        let monthsComponent = Calendar.current.dateComponents([.month], from: self, to: now)
        guard let numberOfMonths = monthsComponent.month else { return nil }
        if numberOfMonths >= 6 {
            let formatter = DateFormatter()
            formatter.dateFormat = "EEEE, MMM dd, yyyy"
            return formatter.string(from: self)
        } else {
            let formatter = RelativeDateTimeFormatter()
            formatter.unitsStyle = .full
            return formatter.localizedString(for: self, relativeTo: now)
        }
    }
}
