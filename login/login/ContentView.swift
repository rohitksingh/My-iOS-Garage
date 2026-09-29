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
                            .padding()
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.horizontal, 40)
        
            TextField("Password", text: $passwordValue)
                            .padding()
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.horizontal, 40)

            
        }
        .frame(maxWidth: .infinity, maxHeight : .infinity)
        .background(Color.black)

    }
    
    
}

#Preview {
    ContentView()
}
