//
//  AwardView.swift
//  NH208
//
//  Created by Vincent Chiang on 2023/1/5.
//

import SwiftUI
import Foundation
struct Award: Codable {
    var id: Int
  var Award: String
  var people: String
  var picture1: String
  var describ: String
    
}

struct AwardView: View{
    var award: [Award] = [
        Award(id:0,Award: "台北市資通訊大賽", people: "vc,dd,dd", picture1: "r1", describ: "few")
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(award, id: \.id) { award in
                    NavigationLink(destination:DetailrView(award: award)){
                        VStack{
                            Image(award.picture1)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                                .overlay(
                                    Color.black
                                        .opacity(0.1)
                                        .cornerRadius(10)
                                )
                            Text(award.Award)
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                                .padding(.top,5)
                                .bold()
                        }
                            .padding(.init(top: 30, leading: 40, bottom: 0, trailing: 40))
                        
                    }
                }.navigationTitle("Awards")
                    .foregroundColor(Color.black)
            }.background(Color(red: 173/255, green: 198/255, blue: 220/255))
        }
    }
}

struct DetailrView: View {
    var award: Award
    @State private var currentImageIndex = 0
    var body: some View {
        ScrollView {
            //background photo
            
            Image(award.picture1)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
                .shadow(radius: 7)
                .shadow(radius: 7)
                .ignoresSafeArea(edges: .top)
                .padding(EdgeInsets(top: 15, leading: 0, bottom: 70, trailing: 0))
                
  //main photo
            /*
            Image(person.imageName_1)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .clipped()
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .offset(y: -130)
                .padding(.bottom, -130)*/

            VStack(alignment: .leading) {
                Text(award.people)
                    .font(.title)

                Divider()

                Text("Our design")
                    .font(.title2)
                Text(award.describ)
            }
            .padding()
        }
    }
}

struct RewardView_Previews: PreviewProvider {
    static var previews: some View {
        AwardView()
    }
}
