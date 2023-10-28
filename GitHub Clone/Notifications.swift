//
//  Explore.swift
//  GitHub Clone
//
//  Created by Nosaibah Alrajhi on 26/10/2023.
//

import SwiftUI

struct Notifications: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Inbox").font(.largeTitle).frame(maxWidth: .infinity, alignment: .topLeading)
                
                HStack{
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 16).frame(width: 80, height: 25).foregroundColor(.gray.opacity(0.5))
                        Text("Inbox").offset(x: -8)
                        Image(systemName: "chevron.down").resizable().scaledToFit().frame(width: 10, height: 10).offset(x: 25)
                    }
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 16).frame(width: 70, height: 25).foregroundColor(.gray.opacity(0.5))
                        Text("unread")
                        
                    }
                    
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 16).frame(width: 110, height: 25).foregroundColor(.gray.opacity(0.5))
                        Text("repository").offset(x: -8)
                        Image(systemName: "chevron.down").resizable().scaledToFit().frame(width: 10, height: 10).offset(x: 40)
                    }
                    
                    
                    
                    
                    
                    
                    
                }.frame(maxWidth: .infinity, alignment: .topLeading)
                
                Divider()
               
                Spacer()
                Text("All caught up!").font(.headline).foregroundColor(.black.opacity(0.8)).padding()
                //vstack
                
            }.frame(maxWidth: .infinity, alignment: .leading).padding()
            

            
        }
    }
}

struct Notifications_Previews: PreviewProvider {
  static var previews: some View {
    Notifications()
  }
}
