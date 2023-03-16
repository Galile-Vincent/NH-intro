//
//  HomeView.swift
//  NH208
//
//  Created by Vincent Chiang on 2023/1/5.
//

import SwiftUI

struct HomeView: View{
    @State var index=0
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack{
        NavigationView{
                VStack{
                    TabView(selection: self.$index){
                        ForEach(0...6,id: \.self){index in
                            Image("c\(index)")
                                .resizable()
                                .frame(width: self.index == index ? 400 : 380)
                                .cornerRadius(10)
                                .padding(.horizontal)
                                .tag(index)
                            
                        }
                    }
                    .frame(height:250)
                    .tabViewStyle(PageTabViewStyle())
                    .animation(.easeOut)
                    .offset(x: 0, y: -20)
                    .padding(.top,40)
                    .padding(.bottom,30)
                    Spacer()
                    Text("Welcome to 208")
                        .bold()
                        .font(.system(size: 30))
                        .offset(x: -80, y: -150)
                        .foregroundColor(Color.black)
                    Link(destination: URL(string: "http://11thnhcs.000webhostapp.com/major.html")!, label: {
                        VStack(alignment: .leading){
                            Group{
                                Image("NHSH")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(Color.black)
                                HStack{
                                    Text("Go to 208 website ")
                                        .bold()
                                        .foregroundColor(Color.black)
                                    Image(systemName: "arrowshape.right.fill")
                                        .foregroundColor(Color.black)
                                        .foregroundColor(Color.black)
                                }.padding(.horizontal, -29)
                            }
                        }
                    }).offset(x:-90,y:-150)
                }.background(
                    Image("Home")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 500, height:955)
                        .blur(radius: 2)
                )
                .navigationTitle(Text("Home"))
                .foregroundColor(Color.black)
            }
                
        }.onReceive(timer) { _ in
            self.index = (self.index + 1) % 7
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
            HomeView()
    }
}
