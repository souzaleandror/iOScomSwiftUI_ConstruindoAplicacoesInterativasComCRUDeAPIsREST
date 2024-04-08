//
//  Appointment.swift
//  Vollmed
//
//  Created by Leandro Rodrigues on 08.04.2024.
//

import Foundation

struct Appointment: Identifiable, Codable {
    let id: String
    let date: String
    let specialist: Specialist
    
    enum CodingKeys: String, CodingKey {
        case id
        case date = "data"
        case specialist = "especialista"
    }
}
