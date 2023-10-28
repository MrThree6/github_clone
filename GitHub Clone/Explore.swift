//
//  Explore.swift
//  GitHub Clone
//
//  Created by Nosaibah Alrajhi on 28/10/2023.
//

import SwiftUI

struct Explore: View {
    
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack {
                    HStack{
                        Text("Discover").padding(.horizontal).font(.title2).navigationTitle("Exaplore")
                        Spacer()
                    }
                    
                    VStack {
                        ForEach(myWorkRows) { row in
                            NavigationLink {
                                
                            } label: {
                                
                                
                                makeRow(row: row)
                            }
                            if myWorkRows.last?.id != row.id {
                                Divider()
                                    .padding(.leading)
                            }
                        }
                    }.padding(16)
                        .background(.gray.opacity(0.15))
                        .cornerRadius(8).padding()
                    
                    HStack{
                        Text("Activity").padding(.horizontal).font(.title2)
                        Spacer()
                        Image(systemName: "slider.vertical.3").padding()
                    }
                    
                    RoundedRectangle(cornerRadius: 8).frame(width: 350 , height: 300)
                    
                    
                    
                    
                }
                .padding(.vertical)
                .background(.white.opacity(0.75))
                .cornerRadius(8)
            }
            
            
        }.searchable(text: $searchText).buttonStyle(.plain)
        
        
        
        
    }
    
    let myWorkRows: Array<RowData> = [
      RowData(
        title: "Trending Repositories",
        leadingImageName: "flame",
        leadingImageBackgroundColor: .purple
      ),
      RowData(
        title: "Awesome Lists",
        leadingImageName: "face.smiling",
        leadingImageBackgroundColor: .pink
      )
    ]
    func makeRow(row: RowData) -> some View {
      HStack {
        Image(systemName: row.leadingImageName)
          .resizable()
          .scaledToFit()
          .frame(width: 24, height: 24)
          .foregroundColor(row.leadingImageForegroundColor)
          .padding(8)
          .background(
            RoundedRectangle(cornerRadius: 8)
              .fill(row.leadingImageBackgroundColor)
          )
          Text(row.title)
        Spacer()
          Image(systemName: "chevron.right")
      }
      .padding(.horizontal)
    }
    
    
    
    
}

struct Explore_Previews: PreviewProvider {
  static var previews: some View {
    Explore()
  }
}
