//
//  ContentView.swift
//  login
//
//  Created by Rohit Singh on 9/25/26.
//

import SwiftUI
import os

struct SignInView: View {
    
    @State var emailValue = ""
    @State var passwordValue = ""
    
    private let logger = Logger(subsystem: "com.rohit.login", category: "ContentView")
    
    
    var body: some View {
        
        NavigationStack{
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
                
                
               Button("Sign in", action: signup)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.horizontal, 40)
                
    
                
                NavigationLink("Don't have an account? Sign up", destination:
                    SignUpView())
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                                

                
            }
            .frame(maxWidth: .infinity, maxHeight : .infinity)
            .background(Color.black)
        }
        
        
    }
    
    func signup(){
        logger.info("Sign up clicked")
    }
    
    
}

#Preview {
    SignInView()
}
