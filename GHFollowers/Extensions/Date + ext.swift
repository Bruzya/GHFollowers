//
//  Date + ext.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 05.01.2024.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
