//
//  ScheduleAppointmentView.swift
//  Vollmed
//
//  Created by Leandro Rodrigues on 06.04.2024.
//

import SwiftUI

struct ScheduleAppointmentView: View {
    
    @State private var selectedDate = Date()
    
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
            }, label: {
                ButtonView(text: "Agendar consulta")
            })
        }.padding()
        .navigationTitle("Agendar consulta")
        .navigationBarTitleDisplayMode(.large)
        .onAppear() {
            UIDatePicker.appearance().minuteInterval = 15
        }
    }
}

#Preview {
    ScheduleAppointmentView()
}
