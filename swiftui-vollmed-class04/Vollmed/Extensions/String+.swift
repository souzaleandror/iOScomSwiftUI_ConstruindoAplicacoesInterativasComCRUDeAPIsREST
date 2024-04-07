//
//  String+.swift
//  Vollmed
//
//  Created by Leandro Rodrigues on 06.04.2024.
//

import Foundation

extension String {
    func convertDateStringToReadableDate() -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        
        if let date = inputFormatter.date(from: self) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd/MM/yyyy 'as' HH:mm"
            return dateFormatter.string(from: date)
        }
        
        return ""
    }
}
