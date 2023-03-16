//
//  TabBar.swift
//  NH208
//
//  Created by Vincent Chiang on 2023/2/25.
//

import UIKit
import SwiftUI
enum TabItem: String, CaseIterable {
    case home
    case search
    case bookmarks
    case profile
    
    var description: String {
        switch self {
        case .home:
            return "Home"
        case .search:
            return "Member"
        case .bookmarks:
            return "Life"
        case .profile:
            return "Award"
        }
    }
    
    var icon: String {
        switch self {
        case .home:
            return "house.circle.fill"
            
        case .search:
            return "person.circle.fill"
            
        case .bookmarks:
            return "photo.on.rectangle.angled"
            
        case .profile:
            return "flag.circle.fill"
        }
    }
}
extension UIApplication {
    static var safeAreaInsets: UIEdgeInsets  {
        let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        return scene?.windows.first?.safeAreaInsets ?? .zero
    }
}
struct DevTechieCustomTabbar : View {
    var tabItems = TabItem.allCases
    
    @State var selected: TabItem = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View{
        
        VStack(spacing: 0){
            TabView(selection: $selected){
                
                HomeView()
                    .tag(tabItems[0])
                    .ignoresSafeArea(.all)
                
                ReadView()
                    .tag(tabItems[1])
                    .ignoresSafeArea(.all)
                
                LifeView()
                    .tag(tabItems[2])
                    .ignoresSafeArea(.all)
                
                AwardView()
                    .tag(tabItems[3])
                    .ignoresSafeArea(.all)
                
                
                
                
            }
            Spacer(minLength: 0)
            CustomTabbarView(tabItems: tabItems, selected: $selected)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}
struct CustomTabbarView: View {
    var tabItems: [TabItem]
    @State var centerX : CGFloat = 0
    @Environment(\.verticalSizeClass) var size
    @Binding var selected: TabItem
    
    init(tabItems: [TabItem], selected: Binding<TabItem>) {
        UITabBar.appearance().isHidden = true
        self.tabItems = tabItems
        self._selected = selected
    }
    
    var body: some View {
        HStack(spacing: 0){
            
            ForEach(tabItems,id: \.self){value in
                
                GeometryReader{ proxy in
                    BarButton(selected: $selected, centerX: $centerX, rect: proxy.frame(in: .global), value: value)
                        .onAppear(perform: {
                            if value == tabItems.first{
                                centerX = proxy.frame(in: .global).midX
                            }
                        })
                        .onChange(of: size) { (_) in
                            if selected == value{
                                centerX = proxy.frame(in: .global).midX
                            }
                        }
                }
                .frame(width: 70, height: 50)
                if value != tabItems.last{Spacer(minLength: 0)}
            }
        }
        .padding(.horizontal,25)
        .padding(.top)
        .padding(.bottom,UIApplication.safeAreaInsets.bottom == 0 ? 15 : UIApplication.safeAreaInsets.bottom)
        .background(.ultraThinMaterial, in: CustomShape(centerX: centerX))
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -5)
        .padding(.top,-15)
        .ignoresSafeArea(.all, edges: .horizontal)
    }
}
struct BarButton : View {
    @Binding var selected : TabItem
    @Binding var centerX : CGFloat
    
    var rect : CGRect
    var value: TabItem
    
    var body: some View{
        Button(action: {
            withAnimation(.spring()){
                selected = value
                centerX = rect.midX
            }
        }, label: {
            VStack{
                Image(systemName: value.icon)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 26, height: 26)
                    .foregroundColor(selected == value ? .indigo : .gray)
                
                Text(value.description)
                    .font(.caption)
                    .foregroundColor(.blue)
                    .opacity(selected == value ? 1 : 0)
            }
            .padding(.top)
            .frame(width: 70, height: 50)
            .offset(y: selected == value ? -15 : 0)
        })
    }
}
struct CustomShape: Shape {
    var centerX : CGFloat
    var animatableData: CGFloat{
        get{return centerX}
        set{centerX = newValue}
    }
    
    func path(in rect: CGRect) -> Path {
        return Path{path in
            path.move(to: CGPoint(x: 0, y: 15))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 15))
            path.move(to: CGPoint(x: centerX - 35, y: 15))
            path.addQuadCurve(to: CGPoint(x: centerX + 35, y: 15), control: CGPoint(x: centerX, y: -30))
        }
    }
}


struct arr_Previews: PreviewProvider {
    static var previews: some View {
        DevTechieCustomTabbar()
    }
}
