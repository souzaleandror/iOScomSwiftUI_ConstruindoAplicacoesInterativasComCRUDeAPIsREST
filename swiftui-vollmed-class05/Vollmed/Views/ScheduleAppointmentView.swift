//
//  ScheduleAppointmentView.swift
//  Vollmed
//
//  Created by Leandro Rodrigues on 06.04.2024.
//

import SwiftUI

struct ScheduleAppointmentView: View {
    
    let service = WebService()
    var specialistID: String
    var isRescheduleView: Bool
    var appointmentID: String?
    
    @State private var selectedDate = Date()
    @State private var showAlert = false
    @State private var isAppointmentScheduled = false
    
    init(specialistID: String, isRescheduleView: Bool = false, appointmentID: String? = nil) {
        self.specialistID = specialistID
        self.isRescheduleView = isRescheduleView
        self.appointmentID = appointmentID
    }
    
    func rescheduleAppointment() async {
        
        guard let appointmentID else {
            print("Houve um erro ao obter o ID da consulta")
            return
        }
        
        print(appointmentID)
        
    }
    
    func scheduleAppointment() async {
        do {
               if let appointment = try await
                    service.scheduleAppointment(specialistID: specialistID, patientID: patientID, date: selectedDate.convertToString()) {
                        print(appointment)
                   isAppointmentScheduled = true
               } else {
                   isAppointmentScheduled = false
               }
            
            } catch {
                isAppointmentScheduled = false
                print("Ocorreu um erro ao agendar consulta: \(error)")
            
            }
        showAlert = true
     }
    
    var body: some View {
        VStack {
            Text("Seleciona a data e o horario da consulta")
                .font(.title3)
                .bold()
                .foregroundStyle(.accent)
                .multilineTextAlignment(.center)
                .padding(.top)
            
            DatePicker("Escolha a data da consulta", selection: $selectedDate, in: Date()...).datePickerStyle(.graphical)
            
            Button(action: {
                print("Botao pressionado")
                print(selectedDate.convertToString().convertDateStringToReadableDate())
                Task {
                    if(isRescheduleView) {
                        await rescheduleAppointment()
                    } else {
                        await scheduleAppointment()
                    }
                }
            }, label: {
                ButtonView(text: isRescheduleView ? "Reagendar consulta" : "Agendar consulta")
            })
        }.padding()
            .navigationTitle(isRescheduleView ? "Reagendar consulta" : "Agendar consulta")
        .navigationBarTitleDisplayMode(.large)
        .onAppear() {
            UIDatePicker.appearance().minuteInterval = 15
        }
        .alert(isAppointmentScheduled ? "Sucesso!" : "Ops, algo deu errado!", isPresented: $showAlert, presenting: isAppointmentScheduled) { _ in
                 Button(action: {}, label: {
                     Text("Ok")
                 })
             } message: { isScheduled in
                 if isScheduled {
                     Text("A consulta foi \(isRescheduleView ? "Reagendado" : "agendada") com sucesso!")
                 } else {
                     Text("Houve um erro ao \(isRescheduleView ? "Reagendado" : "agendada") sua consulta. Por favor tente novamente ou entre em contato via telefone.")
                 }
             }
    }
}

#Preview {
    ScheduleAppointmentView(specialistID: "123")
}
