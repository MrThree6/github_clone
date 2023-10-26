//
//  Explore.swift
//  GitHub Clone
//
//  Created by Nosaibah Alrajhi on 26/10/2023.
//

import SwiftUI

struct Explore: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Inbox").font(.largeTitle).frame(maxWidth: .infinity, alignment: .topLeading)
                
                HStack{
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 16).frame(width: 80, height: 20).foregroundColor(.gray)
                        Text("Inbox").offset(x: -8)
                        Image(systemName: "chevron.down").resizable().scaledToFit().frame(width: 10, height: 10).offset(x: 25)
                    }
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 16).frame(width: 70, height: 20).foregroundColor(.gray)
                        Text("unread")
                        
                    }
                    
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 16).frame(width: 110, height: 20).foregroundColor(.gray)
                        Text("repository").offset(x: -8)
                        Image(systemName: "chevron.down").resizable().scaledToFit().frame(width: 10, height: 10).offset(x: 40)
                    }
                    
                    
                    
                    
                    
                }.frame(maxWidth: .infinity, alignment: .topLeading)
                
                Divider()
                
            //vstack
            }.frame(maxWidth: .infinity, alignment: .leading).padding()
        }
    }
}

struct Explore_Previews: PreviewProvider {
  static var previews: some View {
    Explore()
  }
}
