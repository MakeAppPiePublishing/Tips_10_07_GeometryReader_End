//
//  ContentView.swift
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
// Trader Tales from the Golden Age of the  Solar Clipper by Nathan Lowell

import SwiftUI

let buttonTitles = ["Comms","Jackets","Spacer Handbook","Ship Functions","News" ]

struct ContentView: View {
    @State var index:Int = 0
    var body: some View {

        VStack{
             TitleView(subtitle: "Functional")
            .foregroundColor(.gold)
            .padding([.bottom],10)
            .padding(.top,40)
            HStack{
                ZStack{ //Content
                    BusinessNewsView()
                } //Zstack
                    .foregroundColor(.gold)

                VStack { //buttons
                    
                    ButtonSelectionView(selectedIndex: self.$index, buttonTitles:buttonTitles)
                    
                }//vstack

            }
            Spacer()
            FootNoteView()
                .padding([.leading,.trailing], 10)
        }
        .background(Color.darkGreen)
        
        
//        }//Geometryreder

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
