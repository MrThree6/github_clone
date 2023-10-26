//
//  ContentView.swift
//  GitHub Clone
//
//  Created by Abdullah Aljahdali on 24/10/2023.
//

import SwiftUI

struct HomeView: View {
  let myWorkRows: Array<RowData> = [
    RowData(
      title: "Issues",
      leadingImageName: "record.circle",
      leadingImageBackgroundColor: .green
    ),
    RowData(
      title: "Pull Requests",
      leadingImageName: "dots.and.line.vertical.and.cursorarrow.rectangle",
      leadingImageBackgroundColor: .blue
    ),
    RowData(
      title: "Discussions",
      leadingImageName: "bubble.left.and.bubble.right",
      leadingImageBackgroundColor: .purple
    ),
    RowData(
      title: "Repositories",
      leadingImageName: "book.closed",
      leadingImageBackgroundColor: .black
    ),
    RowData(
      title: "Organizations",
      leadingImageName: "building.2",
      leadingImageBackgroundColor: .orange
    ),
  ]
  var body: some View {
    ScrollView {
      RoundedRectangle(cornerRadius: 8)
        .frame(height: 8 * 20)
        .padding()
      VStack {
        HStack {
          Text("My Work")
          Spacer()
          Image(systemName: "ellipsis")
        }
          
              
              
              VStack {
                  ForEach(myWorkRows) { row in
                      NavigationLink(destination: Text("You reached here via NaviagtionLink")) {
                          makeRow(row: row)
                      }.buttonStyle(PlainButtonStyle())
                      if myWorkRows.last?.id != row.id {
                          Divider()
                              .padding(.leading)
                      }
                      
                  }
              }
              .padding(.vertical)
              .background(.white.opacity(0.75))
              .cornerRadius(8)
          
      }
      .frame(
        maxWidth: .infinity,
        alignment: .leading
      )
      .padding(.horizontal)
      
      VStack {
        HStack {
          Text("Favorites")
          Spacer()
          Image(systemName: "ellipsis")
        }
        
        VStack {
          Text("Add favorite repositories here to have quick access at any time, without having to search")
            .multilineTextAlignment(.center)
          Button(
            action: {},
            label: {
              Text("Add Favorites")
                .frame(maxWidth: .infinity)
                .frame(height: 8 * 8)
                .background(
                  RoundedRectangle(cornerRadius: 8)
                    .fill(.white)
                )
            }
          )
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical)
        .padding(.horizontal)
        .background(.white.opacity(0.75))
        .cornerRadius(8)
      }
      .frame(
        maxWidth: .infinity,
        alignment: .leading
      )
      .padding(.horizontal)

    }
    .background(.gray.opacity(0.25))
  }
  
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

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}

struct RowData: Identifiable {
  let id = UUID()
  let title: String
  let leadingImageName: String
  let leadingImageForegroundColor: Color = .white
  let leadingImageBackgroundColor: Color
}
