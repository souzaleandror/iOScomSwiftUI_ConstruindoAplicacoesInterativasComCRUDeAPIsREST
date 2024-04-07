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
    
    @State private var selectedDate = Date()
    @State private var showAlert = false
    @State private var isAppointmentScheduled = false
    
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
                    await scheduleAppointment()
                }
            }, label: {
                ButtonView(text: "Agendar consulta")
            })
        }.padding()
        .navigationTitle("Agendar consulta")
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
                     Text("A consulta foi agendada com sucesso!")
                 } else {
                     Text("Houve um erro ao agendar sua consulta. Por favor tente novamente ou entre em contato via telefone.")
                 }
             }
    }
}

#Preview {
    ScheduleAppointmentView(specialistID: "123")
}
