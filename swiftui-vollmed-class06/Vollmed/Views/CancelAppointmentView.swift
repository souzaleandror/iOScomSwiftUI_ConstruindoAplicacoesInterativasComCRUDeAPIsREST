//
//  CancelAppointmentView.swift
//  Vollmed
//
//  Created by Leandro Rodrigues on 09.04.2024.
//

import SwiftUI

struct CancelAppointmentView: View {
    
    var appointmentID: String
    let service = WebService()
    
    @State private var reasonToCancel = ""
    
    func cancelAppointment() async {
        do {
            if try await service.cancelAppointment(appointmentID: appointmentID, reasonToCancel: reasonToCancel) {
                print("Consulta cancelada com sucesso")
            }
        } catch {
            print("Ocorreu um erro ao desmacar a consulta: \(error)")
        }
    }
    
    var body: some View {
        VStack(spacing: 16.0) {
            Text("Conte-nos o motivo do cancelamento da sua consulta")
                .font(.title3)
                .bold()
                .foregroundStyle(.accent)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            TextEditor(text: $reasonToCancel)
                .padding()
                .font(.title3)
                .foregroundColor(.accent)
                .scrollContentBackground(.hidden)
                .background(Color(.lightBlue).opacity(0.15))
                .cornerRadius(16.0)
                .frame(maxHeight: 300)
            
            Button(action: {
                print("Botao pressionado")
                Task {
                    await cancelAppointment()
                }
            }, label: {
                ButtonView(text: "Cancelar consulta", buttonType: .cancel)
            })
        }.padding()
            .navigationTitle("Cancelar Consulta")
            .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    CancelAppointmentView(appointmentID: "123")
}
