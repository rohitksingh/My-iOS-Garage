//
//  ContentView.swift
//  login
//
//  Created by Rohit Singh on 9/25/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var emailValue = ""
    @State var passwordValue = ""
    
    var body: some View {
        
        VStack{
            TextField("Email", text: $emailValue)
                        .textFieldStyle(.roundedBorder)
                        .padding(40)
            TextField("Password", text: $passwordValue)
                .textFieldStyle(.roundedBorder)
                .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight : .infinity)
        .background(Color.black)

    }
    
    
}

#Preview {
    ContentView()
}
