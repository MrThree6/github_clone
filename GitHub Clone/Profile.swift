//
//  Profile.swift
//  GitHub Clone
//
//  Created by Nosaibah Alrajhi on 25/10/2023.
//

import SwiftUI




struct ProfileDetailsInformation :Identifiable{
    let id = UUID()
    let title : String
    let subtitle : String
    let systemimage: String
}


struct Profile: View {
    
    
    
    
    
    
    var body: some View {
        
        let  row1 : Array<ProfileDetailsInformation> = [ProfileDetailsInformation(title: "company", subtitle: "", systemimage: "building.2"), ProfileDetailsInformation(title: "riyadh" , subtitle: "", systemimage: "location.circle")]
        let row2 = [
            ProfileDetailsInformation(title: "link", subtitle: "", systemimage: "link"),
            ProfileDetailsInformation(title: "Developer", subtitle: "", systemimage: "cpu.fill")]
        let row3 = [ProfileDetailsInformation(title: "followers", subtitle: "12", systemimage: "person"), ProfileDetailsInformation(title: "following", subtitle: "3", systemimage: "")]
        
        
        ScrollView{
            VStack{
                HStack( ){
                    Circle().frame(width: 60, height: 60)
                        .scaledToFit()
                    VStack{
                        Text("mohammad alrajhi")
                        Text("username").foregroundColor(Color(uiColor: .secondaryLabel))
                    }
                    
                }.frame(maxWidth: .infinity, alignment: .leading).padding()
                
                Text("bio").frame(maxWidth: .infinity, alignment: .leading).padding(16)
                
                
                
                
                HStack{
                    ForEach(row1) { information in
                        Image(systemName: information.systemimage).foregroundColor(Color(uiColor: .secondaryLabel))
                        
                        Text(information.title).padding(.trailing).foregroundColor(Color(uiColor: .secondaryLabel))
                    }
                }.frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal)
                
                HStack{
                    ForEach(row2) { information in
                        Image(systemName: information.systemimage).foregroundColor(Color(uiColor: .secondaryLabel))
                        
                        Text(information.title)
                        
                            .padding(.trailing).foregroundColor(Color(uiColor: .secondaryLabel))
                    }
                }.frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal)
                
                HStack{
                    ForEach(row3) { information in
                        Image(systemName: information.systemimage).foregroundColor(Color(uiColor: .secondaryLabel))
                        Text(information.subtitle).foregroundColor(Color(uiColor: .secondaryLabel))
                        
                        /*@START_MENU_TOKEN@*/Text(information.title)/*@END_MENU_TOKEN@*/.padding(.trailing).foregroundColor(Color(uiColor: .secondaryLabel))
                    }
                }.frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal)
                HStack{
                    Image(systemName: "trophy").foregroundColor(Color(uiColor: .secondaryLabel)).padding(.horizontal)
                    ZStack{
                        Image("cowboy").resizable().scaledToFit().frame(width: 40, height: 40).offset(x:-30)
                        Image("shark").resizable().scaledToFit().frame(width: 40, height: 40)
                        Image("yolo").resizable().scaledToFit().frame(width: 40, height: 40).offset(x: 30)
                        
                        
                        
                    }.frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal)
                }
                
                
                
                VStack {
                    
                  ForEach(myWorkRows) { row in
                      NavigationLink {
                          Text("hawdy")
                      } label: {
                         
                      
                    makeRow(row: row)
                    if myWorkRows.last?.id != row.id {
                      Divider()
                        .padding(.leading)
                    }
                      
                      }

                  }
                }
                .padding(.vertical)
                .background(.white.opacity(0.75))
                .cornerRadius(8)
                
                
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack{
                        RoundedRectangle(cornerRadius: 25.0).frame(width: 200,height: 200)
                        RoundedRectangle(cornerRadius: 25.0).frame(width: 200,height: 200)
                        RoundedRectangle(cornerRadius: 25.0).frame(width: 200,height: 200)
                        
                    }.padding()
                }
            }
            
            
        }
    }
    let myWorkRows: Array<RowData> = [
      RowData(
        title: "Repositories",
        leadingImageName: "book",
        leadingImageBackgroundColor: .gray
      ),
      RowData(
        title: "starred",
        leadingImageName: "star",
        leadingImageBackgroundColor: .yellow
      ),
      RowData(
        title: "Organizations",
        leadingImageName: "building.2",
        leadingImageBackgroundColor: .orange
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

struct Profile_Previews: PreviewProvider {
  static var previews: some View {
    Profile()
  }
}
