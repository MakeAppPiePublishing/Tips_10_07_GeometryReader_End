//
//  SwiftUIView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/8/20.
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

struct ContentHeaderView: View {
    
    var headerTitle:String
    var headerSubtitle:String! = nil
    var body: some View {

        HStack {
            Spacer()
            VStack(alignment:.leading){
                Text(self.headerTitle)
                    .font(.headline)
                    .fontWeight(.heavy)
                Text(self.headerSubtitle ?? "")
                    .font(.subheadline)
            }//Vstack
            .padding()
        }//HStack

            .background(LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: .darkGreen, location: 0.0),Gradient.Stop(color: .gold, location: 0.10)]), startPoint: .leading, endPoint: .trailing))
            .foregroundColor(.darkGreen)
            .cornerRadius(10)

    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView(headerTitle: "Title", headerSubtitle: "")
    }
}
