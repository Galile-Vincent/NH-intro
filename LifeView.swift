//
//  LifeView.swift
//  NH208
//
//  Created by Vincent Chiang on 2023/1/5.
//

import SwiftUI

struct Life: Codable {
  var id: Int
  var EventName: String
  var describ: String
  var picture: String
    
}

struct LifeView: View{
    var life: [Life] = [
        Life(id: 0, EventName: "出遊" ,describ: "fjiewjqp",picture: "AWS")
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(life, id: \.id) { life in
                    NavigationLink(destination:DetailView_life(life: life)){
                        VStack{
                            Image("\(life.picture)0")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                            
                            Text(life.EventName)
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                                .padding(.top,5)
                                .bold()
                        }
                        .padding(.init(top: 30, leading: 40, bottom: 0, trailing: 40))
                        
                    }
                }.navigationTitle("Life")
                    .foregroundColor(Color.black)
            }.background(Color(red: 173/255, green: 198/255, blue: 220/255))
        }
        
    }
}

struct DetailView_life: View {
    var life: Life
    
    @State private var isZoomed = false // track whether image is zoomed or not
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: 3 ){
                ForEach(1..<10) { index in
                    Image("\(life.picture)\(index)")
                        .resizable()
                        .aspectRatio(contentMode: isZoomed ? .fill : .fit) // use .fill when image is zoomed
                        .padding(.bottom,3)
                        .gesture(
                            TapGesture()
                                .onEnded { _ in
                                    self.isZoomed.toggle() // toggle zoom state when image is tapped
                                }
                        )
                }
            }
        }.navigationTitle(life.EventName)
            .foregroundColor(Color.black)
        .background(Color(red: 173/255, green: 198/255, blue: 220/255))
    }
}





struct LifeView_Previews: PreviewProvider {
    static var previews: some View {
        LifeView()
    }
}
