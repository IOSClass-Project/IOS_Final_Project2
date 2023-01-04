//
//  PictureWall.swift
//  IOS_FinalProject
//
//  Created by User02 on 2020/1/5.
//  Copyright © 2020 matcha. All rights reserved.
//

import SwiftUI

struct PictureWall: View {
    var body: some View {
        func countNumber(count: Int) -> Int{
            return count/2 + 1
        }
        func calcu(number1: Int, number2: Int) -> Bool{
            2*number1+1+number2 == 1
        }
        
        var picCount = pictures.count
        return List(0 ..< countNumber(count: picCount)) { index in
            ForEach(0 ..< 2) { (index2) in
                if calcu(number1: index, number2: index2) {
                    ImagePic(picName: "雄火龍")
                }
                else{
                    ImagePic(picName: "pic\(2*index+1+index2)")
                }
            }
            .frame(height: 250)
        }
    }
}

struct ImagePic: View {
    var picName: String
    var body: some View {
        Rectangle()
        .overlay(
            Image(picName)
                .resizable()
                .scaledToFill()
        )
        .clipped()
    }
}

struct PictureWall_Previews: PreviewProvider {
    static var previews: some View {
        PictureWall()
    }
}
