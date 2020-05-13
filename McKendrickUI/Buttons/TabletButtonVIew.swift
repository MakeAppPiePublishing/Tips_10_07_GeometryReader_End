//
//  TabletButton.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/6/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//
// An exercise file for iOS Development Tips Weekly
// A weekely course on LinkedIn Learning for iOS developers
//  Season 10 (Q2 2020) video 07
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  Learn the basics of the GeometeryReader view for sizing buttons and fonts
//  For more code, go to http://bit.ly/AppPieGithub

// Quarter Share, Ishmael Wang, Lois McKendrick, and
// Trader Tales from the Golden Age of the  Solar Clipper Copyright Nathan Lowell. Learn more here:  https://www.amazon.com/Nathan-Lowell/e/B003D54RY4
import SwiftUI

struct TabletButtonView:View{
    var title:String
    @State var isSelected:Bool = false
    var body: some View{
        GeometryReader{ geometry in
            Button(action:{self.isSelected.toggle()}){
                Text(self.title)
                    .foregroundColor(self.isSelected ? .darkGreen: .gold)
                    .font(geometry.size.width >= 200 ? .headline : .caption)
                    .padding(3)
            }//Button
                .frame(width: geometry.size.width, height:geometry.size.height)
                .background(self.isSelected ? Color.gold : Color.clear) //10_08
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gold, lineWidth: 2)
                )//overlay
        }//geo
    }//body
}


struct TabletButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabletButtonView(title:"Send Coffee!")
    }
}
