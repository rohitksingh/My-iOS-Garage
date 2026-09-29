//
//  ContentView.swift
//  login
//
//  Created by Rohit Singh on 9/25/26.
//

import SwiftUI
import os

struct ContentView: View {
    
    @State var emailValue = ""
    @State var passwordValue = ""
    
    private let logger = Logger(subsystem: "com.rohit.login", category: "ContentView")
    
    
    var body: some View {
        
        VStack{
            
            TextField("Email", text: $emailValue)
                            .padding()
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.horizontal, 40)
        
            TextField("Password", text: $passwordValue)
                            .padding()
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.horizontal, 40)
            
           Button("Sign up", action: signup)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundStyle(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal, 40)
                

            
        }
        .frame(maxWidth: .infinity, maxHeight : .infinity)
        .background(Color.black)

    }
    
    func signup(){
        logger.info("Sign up clicked")
    }
    
    
}

#Preview {
    ContentView()
}
