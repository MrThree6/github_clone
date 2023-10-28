//
//  SignIn.swift
//  GitHub Clone
//
//  Created by Nosaibah Alrajhi on 26/10/2023.
//

import SwiftUI

struct SignIn: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    
    var body: some View {
        
        
        
        
        VStack{
            Text("login").font(.largeTitle).padding()
            
            
            TextField("UserName or Email", text: $username)
                .font(.system(size: 17, weight: .thin))
                .foregroundColor(.primary)
                .frame(height: 44)
                .padding(.horizontal, 12)
                .background(Color.white)
                .cornerRadius(4.0)
            
        
            
            SecureField("Password", text: $password)
                .font(.system(size: 17, weight: .thin))
                .foregroundColor(.primary)
                .frame(height: 44)
                .padding(.horizontal, 12)
                .background(Color.white)
                .cornerRadius(4.0)
            
           
            
            Spacer()
        }.frame(alignment: .top)
    }
}

struct SignIn_Previews: PreviewProvider {
  static var previews: some View {
    SignIn()
  }
}
