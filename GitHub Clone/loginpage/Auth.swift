//
//  Auth.swift
//  GitHub Clone
//
//  Created by Nosaibah Alrajhi on 26/10/2023.
//

import SwiftUI

struct Auth: View {
    
    struct LoginAuth : Identifiable{
        let id = UUID()
        let title : String
        let imagename: String
        let colorfill : Color
        let bordercolor: Color
        let textcolor: Color
    }
    
    
    
    var body: some View {
        let loginoptions: Array<LoginAuth> = [
            LoginAuth(title: "continue with google", imagename: "g.circle", colorfill:.white , bordercolor:.gray , textcolor: .black),
                                              
            LoginAuth(title: "continue with apple", imagename: "apple.logo", colorfill: .black, bordercolor: .black, textcolor: .white),
            LoginAuth(title: "continue with facebook", imagename: "face.smiling", colorfill: .blue, bordercolor: .blue, textcolor: .white),
            LoginAuth(title: "Login with email", imagename: "envelope", colorfill: .pink, bordercolor: .pink, textcolor: .white)]
        
        
        NavigationStack {
            VStack{
                VStack{
                    Text("Github clone").font(.largeTitle)
                }.frame(maxWidth:.infinity, maxHeight: .infinity)
                
                VStack{
                    
                    ForEach(loginoptions) { loginoption in
                        Makeloginbutton(option: loginoption, options: loginoptions )
                    }
                  
                    NavigationLink{
                        SignUp()
                    }label: {
                    Text("New to Github Clone? Sign Up").padding().bold().underline()
                    }.buttonStyle(.plain)

                   
                        
                        Text("by clicking Sign Up, Continue with Apple, Continue with Google or Continue with facebook, you agree to Github Clone's [Terms of Use](https://google.com), [Privacy Policy](https://google.com),and [Cookie Policy](https://google.com)").font(.system(size: 14)).multilineTextAlignment(.center)

                }.frame(maxWidth:.infinity, maxHeight: .infinity)
            }
        }
        
    }
    
    func Makeloginbutton(option: LoginAuth, options : Array<LoginAuth>  )->some View{
        NavigationLink {
            if(options.last?.id == option.id  ){
                SignIn()
            }
                    } label: {
                        ZStack{
                            HStack{
                                Image(systemName: option.imagename).foregroundColor(option.textcolor)
                                Spacer()
                                               }
                            Text(option.title)
                                .bold()
                                .foregroundStyle(option.textcolor)
                        }
            
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                                        .stroke(option.bordercolor, lineWidth: 2)
                                                        .fill(option.colorfill)
                                                        .containerShape(RoundedRectangle(cornerRadius: 16))

                        )
                        .padding(.horizontal)
                    }.buttonStyle(.plain)
        
        
        
    }
    
    
}



struct Auth_Previews: PreviewProvider {
  static var previews: some View {
    Auth()
  }
}
