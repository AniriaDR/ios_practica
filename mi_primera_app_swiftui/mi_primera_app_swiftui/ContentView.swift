//
//  ContentView.swift
//  mi_primera_app_swiftui
//
//  Created by alumno on 21/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var texto_introducido_por_el_usuario: String = "Place Holder"
    @State private var texto_a_mostrar_en_saludo: String = "mundo"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hola \(texto_a_mostrar_en_saludo)")
            
            TextEditor(text: $texto_introducido_por_el_usuario)
            
            Button("Pulsame, muak", action: {
                if(texto_introducido_por_el_usuario == ""){
                    texto_a_mostrar_en_saludo = "mundo"
                }
                else {
                    texto_a_mostrar_en_saludo = texto_introducido_por_el_usuario
                    texto_introducido_por_el_usuario = ""
                }
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
