//
//  AppView.swift
//  IOS_FinalProject
//
//  Created by User02 on 2020/1/5.
//  Copyright © 2020 matcha. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            MonsterList()
            .tabItem {
                Image(systemName: "list.bullet")
                Text("分類")
            }
            MonsterOverview()
            .tabItem {
                Image(systemName: "book.circle")
                Text("封面")
            }
            
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
