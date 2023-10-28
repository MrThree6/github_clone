//
//  RootView.swift
//  GitHub Clone
//
//  Created by Abdullah Aljahdali on 24/10/2023.
//

import SwiftUI

struct RootView: View {
  var body: some View {
      NavigationStack{
          
          Auth()
      }
      
      
      TabView {
        
        
      NavigationStack {
        HomeView()
      }
      .tabItem {
        Label("Home", systemImage: "house")
      }
      
          NavigationStack {
              Notifications()
            }
            .tabItem {
              Label("Notifications", systemImage: "bell")
            }
        
          NavigationStack {
              Explore()
            }
            .tabItem {
              Label("Explore", systemImage: "figure.hiking")
            }
      
        NavigationStack {
            Profile()
          }
          .tabItem {
            Label("Profile", systemImage: "person")
          }
    }
  }
}



struct RootView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
