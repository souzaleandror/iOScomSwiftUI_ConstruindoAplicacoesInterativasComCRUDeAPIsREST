//
//  MyAppoimentView.swift
//  Vollmed
//
//  Created by Leandro Rodrigues on 07.04.2024.
//

import SwiftUI

struct MyAppoimentView: View {
    
    let service = WebService()
    
    @State private var appointments: [Appointment] = []
    
    func getAllAppointments() async {
        do {
            if let appointments = try await service.getAllAppointmentsFromPatient(patientID: patientID){
                self.appointments = appointments
            }
        } catch {
            print("Ocorreu um erro ao obter consultas: \(error)")
        }
        
    }
    
    var body: some View {
        ScrollView(showsIndicators:false) {
            ForEach(appointments) { appointment in SpecialistCardView(specialist: appointment.specialist, appointment: appointment)}
        }
        VStack {
            Text("Minhas consultas")
        }
        .navigationTitle("Minhas Consultas")
        .navigationBarTitleDisplayMode(.large)
        .padding()
        .onAppear() {
            Task {
                await getAllAppointments()
            }
        }
    }
}

#Preview {
    MyAppoimentView()
}
