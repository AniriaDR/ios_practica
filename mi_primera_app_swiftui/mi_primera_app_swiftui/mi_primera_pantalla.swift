//
//  mi_primera_pantalla.swift
//  mi_primera_app_swiftui
//
//  Created by alumno on 24/02/25.
//

import SwiftUI

struct mi_primera_pantalla: View {
    var body: some View {
        CampoSencillo()
        
        Spacer()
        
        CampoSencillo()
    }
}

struct CampoSencillo: View{
    @State private var texto = ""
    
    var body: some View {
        Spacer()
        Text("hola \(texto)")
        
        Spacer()
        
        TextField("Place holder", text: $texto)
        
        Spacer()
        
        
        Button(action: {
            texto = ""
        }) {
            Image(systemName: "trash.fill")
                .imageScale(.large)
                .tint(.black)
        }.background(Color.yellow)
        
        Spacer()
    }
}

#Preview {
    mi_primera_pantalla()
}
